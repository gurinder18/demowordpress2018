<!DOCTYPE html>
<html  <?php language_attributes(); ?>>
  <head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php bloginfo('title'); ?></title>

    <!-- Bootstrap -->
    <link href="<?php bloginfo('stylesheet_url'); ?>" rel="stylesheet" />
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.min.css" type="text/css" media="screen" />	
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/font-awesome.css" type="text/css" media="screen" />	
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/animate.css" type="text/css" media="screen" />	

    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php wp_head(); ?>
  </head>
  <body <?php body_class(); ?>>	
	<header id="header">
        <nav class="navbar navbar-default navbar-static-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                   <div class="navbar-brand">
						<a href="index.php">
							<h1><?php bloginfo('name'); ?></h1>
							<?php if (function_exists('the_custom_logo')) {
								the_custom_logo();
							} ?>
						</a>
					</div>
                </div>			
                <div class="navbar-collapse collapse">							
					<?php $defaults = array(
						'container'       => 'div',
						'container_class' => 'menu',
						'menu_class'      => 'nav nav-tabs',
						'echo'            => true,
						'fallback_cb'     => 'wp_page_menu',
						'depth'           => 0
					);
					wp_nav_menu( $defaults ); ?>
				</div>	
                		
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
	