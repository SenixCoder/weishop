<?php
class ControllerAccountRegisterbywx extends Controller {
    private $error = array();
    // login from weixin
    public function index() {
        $usr_info['password']                  = $_GET['openid'];
        $usr_info['email']                     = $_GET['openid'];
        $usr_info['firstname']                 = base64_decode($_GET['username']);
        $usr_info['customer_group_id']         = '1';
        $usr_info['fax']                       = '';
        $usr_info['custom_field']['address'][] = '未填写';
        $usr_info['company']                   = '未填写';
        $usr_info['address_1']                 = '未填写';
        $usr_info['city']                      = '苏州';
        $usr_info['postcode']                  = '215000';
        $usr_info['country_id']                = '44';
        $usr_info['zone_id']                   = '700';
        $usr_info['newsletter']                = '0';
        $usr_info['agree']                     = '1';
        $usr_info['confirm']                   = $usr_info['password'];
        $this->load->model('account/customer');
        $user = $this->model_account_customer->getCustomerByEmail($usr_info['email']);
        if (!$user) {
            $this->model_account_customer->addCustomer($usr_info);
            // Clear any previous login attempts for unregistered accounts.
            $this->model_account_customer->deleteLoginAttempts($usr_info['email']);
            $this->customer->login($usr_info['email'], $usr_info['password']);
            unset($this->session->data['guest']);
            // Add to activity log
            $this->load->model('account/activity');
            $activity_data = array(
                'customer_id' => $this->customer->getId(),
                'name'        => $usr_info['firstname'] . ' ' . $usr_info['lastname']
            );
            $this->model_account_activity->addActivity('register', $activity_data);
        } else {
            $login_info = $this->model_account_customer->getLoginAttempts($usr_info['email']);
            if ($login_info && ($login_info['total'] > $this->config->get('config_login_attempts')) && strtotime('-1 hour') < strtotime($login_info['date_modified'])) {
                $this->error['warning'] = $this->language->get('error_attempts');
            }
            // Check if customer has been approved.
            $customer_info = $this->model_account_customer->getCustomerByEmail($_GET['email']);
            if ($customer_info && !$customer_info['approved']) {
                $this->error['warning'] = $this->language->get('error_approved');
            }
            if (!$this->error) {
                if (!$this->customer->login($usr_info['email'], $usr_info['password'])) {
                    $this->error['warning'] = $this->language->get('error_login');
                    $this->model_account_customer->addLoginAttempt($usr_info['email']);
                } else {
                    $this->model_account_customer->deleteLoginAttempts($usr_info['email']);
                }
            }
        }
        $this->response->redirect($this->url->link('common/home'));
    }
    public function validate() {
    }
}
