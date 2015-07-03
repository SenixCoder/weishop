<?php

namespace Addons\Weishop;
use Common\Controller\Addon;

/**
 * Weiphp微商城插件插件
 * @author Mike
 */

    class WeishopAddon extends Addon{

        public $info = array(
            'name'=>'Weishop',
            'title'=>'Weiphp微商城插件',
            'description'=>'微商城插件',
            'status'=>1,
            'author'=>'Mike',
            'version'=>'0.1',
            'has_adminlist'=>0,
            'type'=>1         
        );

	public function install() {
		$install_sql = './Addons/Weishop/install.sql';
		if (file_exists ( $install_sql )) {
			execute_sql_file ( $install_sql );
		}
		return true;
	}
	public function uninstall() {
		$uninstall_sql = './Addons/Weishop/uninstall.sql';
		if (file_exists ( $uninstall_sql )) {
			execute_sql_file ( $uninstall_sql );
		}
		return true;
	}

        //实现的weixin钩子方法
        public function weixin($param){

        }

    }