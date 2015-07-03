<?php
namespace Addons\Weishop\Controller;

use Home\Controller\AddonsController;
use User\Api\UserApi;

class WeishopController extends AddonsController {

    function _initialize() {
        $act = strtolower ( _ACTION );
        $con = strtolower (_CONTROLLER);

        $nav = array ();
        $res ['title'] = '配置信息';
        $res ['url'] = addons_url ( 'Weishop://Weishop/config' );
        $res ['class'] = $act == 'config' ? 'current' : '';
        $nav [] = $res;


        // $res ['title'] = '我的用户';
        // $res ['url'] = addons_url ( 'UserCenter://UserCenter/lists' );
        // $res ['class'] = $act == 'lists' && $con == 'usercenter' ? 'current' : '';
        // $nav [] = $res;

        // $user = session('user_auth');
        // if (!empty($user) && $user['uid'] == 1) {
            // $res ['title'] = '摇一摇用户';
            // $res ['act'] = 'beaconlists';
            // $res ['url'] = addons_url ( 'UserCenter://BeaconUser/lists' );
            // $res ['class'] = $act == 'lists' && $con == 'beaconuser'? 'current' : '';
            // $nav [] = $res;
        // }

        $this->assign ( 'nav', $nav );
    }

    public function index() {
        $this->replyText(get_token());
        de(get_token());
    }
}
