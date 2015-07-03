<?php

namespace Addons\Weishop\Model;
use Home\Model\WeixinModel;
use Addon\UserCenter\Model\UserCenter;

/**
 * Weishop的微信模型
 */
class WeixinAddonModel extends WeixinModel{
	function reply($dataArr, $keywordArr = array()) {
        $config = getAddonConfig ( 'Weishop' ); // 获取后台插件的配置参数
        $model = $this->getModel ( 'follow' );
        $map ['openid'] = get_openid ();
        $data = M ( get_table_name ( $model ['id'] ) )->where ( $map )->find ();
        $this->replyText(json_encode($data));
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

