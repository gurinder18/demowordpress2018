<?php defined( 'ABSPATH' ) or die( __('No script kiddies please!', 'wp-header-images') );
/*
Plugin Name: WP Header Images
Plugin URI: http://www.websitedesignwebsitedevelopment.com/wordpress/plugins/wp-header-images
Description: WP Header Images is a great plugin to implement custom header images for each page. You can set images easily and later can manage CSS from your theme.
Version: 1.5.8
Author: Fahad Mahmood 
Author URI: http://www.androidbubbles.com
License: GPL2
This WordPress Plugin is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
any later version. 
This free software is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details. 
You should have received a copy of the GNU General Public License
along with this software. If not, see http://www.gnu.org/licenses/gpl-2.0.html.
*/ 


        
	require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        

	global $hi_premium_link, $wphi_dir, $hi_pro, $hi_data, $wphi_link, $wphi_template;
	$wphi_template = get_option('wphi_template', 'centered');
	$wphi_dir = plugin_dir_path( __FILE__ );
	$rendered = FALSE;
	$hi_data = get_plugin_data(__FILE__);
	$hi_premium_link = 'http://shop.androidbubbles.com/product/wp-header-images-pro';
	$wphi_link = plugin_dir_url( __FILE__ );

	

	
	$hi_data = get_plugin_data(__FILE__);
	
	$wphi_premium_scripts = $wphi_dir.'pro/wphi-premium.php';

	$hi_pro = file_exists($wphi_premium_scripts);

	if($hi_pro){
		
		include($wphi_premium_scripts);

	}

	
	
	include('inc/functions.php');
        
	

	add_action( 'admin_enqueue_scripts', 'register_hi_scripts' );
	add_action( 'wp_enqueue_scripts', 'register_hi_scripts' );
	

		

		
	function wphi_activate() {	
	}
	register_activation_hook( __FILE__, 'wphi_activate' );
	
		
	if(is_admin()){
		add_action( 'admin_menu', 'wphi_menu' );		
		$plugin = plugin_basename(__FILE__); 
		add_filter("plugin_action_links_$plugin", 'wphi_plugin_links' );	
		
	}else{
		
	
		add_action( 'wp_footer', 'wp_header_images' );
		add_action('apply_header_images', 'get_header_images', 10, 1);	
		
		
		add_shortcode('WP_HEADER_IMAGES', 'get_header_images');		
		
	}


	