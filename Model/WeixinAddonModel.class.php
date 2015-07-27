<?php
namespace Addons\Weishop\Model;

use Home\Model\WeixinModel;
use Addon\UserCenter\Model\UserCenter;
use Common\Model\FollowModel;

/**
 * Weishop的微信模型
 */
class WeixinAddonModel extends WeixinModel{
	public function reply($dataArr, $keywordArr = array()) {
        $config = getAddonConfig ('Weishop'); // 获取后台插件的配置参数
        $map ['openid'] = get_openid ();
        $this->replyText('http:/www.szjlxh.com/weiphp/Addons/Weishop/shop/index.php?route=account/registerbywx&openid='.$map['openid'].'&username='.$this->getUserInfo());
    }

    function getUserInfo() {
        $token = get_token();
        $access_token = get_access_token($token);
        $openid = get_openid ();

        $res = file_get_contents("https://api.weixin.qq.com/cgi-bin/user/info?access_token=".$access_token."&openid=".$openid."&lang=zh_CN");
        $userInfo = json_decode($res);
        if ($userInfo->openid) {
            return $userInfo->nickname;
        }
        return false;
    }

	// 关注公众号事件
	public function subscribe() {
		return true;
	}

	// 取消关注公众号事件
	public function unsubscribe() {
		return true;
	}

	// 扫描带参数二维码事件
	public function scan() {
		return true;
	}

	// 上报地理位置事件
	public function location() {
		return true;
	}

	// 自定义菜单事件
	public function click() {
		return true;
	}
}

