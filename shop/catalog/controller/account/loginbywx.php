<?php
class ControllerAccountLoginbywx extends Controller {

	private $error = array();
    // login from weixin
    public function index() {
        $this->load->model('account/customer');

        $login_info = $this->model_account_customer->getLoginAttempts($_GET['email']);

        if ($login_info && ($login_info['total'] > $this->config->get('config_login_attempts')) && strtotime('-1 hour') < strtotime($login_info['date_modified'])) {
            $this->error['warning'] = $this->language->get('error_attempts');
        }

        // Check if customer has been approved.
        $customer_info = $this->model_account_customer->getCustomerByEmail($_GET['email']);

        if ($customer_info && !$customer_info['approved']) {
            $this->error['warning'] = $this->language->get('error_approved');
        }

        if (!$this->error) {
            if (!$this->customer->login($this->request->get['email'], $_GET['password'])) {
                $this->error['warning'] = $this->language->get('error_login');

                $this->model_account_customer->addLoginAttempt($_GET['email']);
            } else {
                $this->model_account_customer->deleteLoginAttempts($_GET['email']);
            }
        }

        if ($this->error) {
            die();
        } else {
            $url="index.php?route=common/home";
            echo "<script language=\"javascript\">";
            echo "location.href=\"$url\"";
            echo "</script>script>";
            die();
        }
        dd($this->error);
    }

    public function validate() {
    }
}
