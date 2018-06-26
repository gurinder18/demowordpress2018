<?php 
    
/**
 * Enqueues scripts and styles.
 *
 * @since Twenty Sixteen 1.0
 */
function day_scripts() {
	// Add custom fonts, used in the main stylesheet.
	wp_enqueue_style( 'style', get_template_directory_uri() . '/style.css', false, '20160816', true );
	wp_enqueue_style( 'animate', get_template_directory_uri() . '/css/animate.css', false, '20160816', true );
    wp_enqueue_style( 'animate.min', get_template_directory_uri() . '/css/animate.min.css', false, '20160816', true );
    wp_enqueue_style( 'bootstrap.min', get_template_directory_uri() . '/css/bootstrap.min.css', false, '20160816', true );
    wp_enqueue_style( 'font-awesome.min', get_template_directory_uri() . '/css/font-awesome.min.css', false, '20160816', true );
    wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/jquery.js', array(), '20160816', true );
    wp_enqueue_script( 'wow.min', get_template_directory_uri() . '/js/wow.min.js', array(), '20160816', true );
    wp_enqueue_script( 'bootstrap.min', get_template_directory_uri() . '/js/bootstrap.min.js', array(), '20160816', true );
    
}
add_action( 'wp_enqueue_scripts', 'day_scripts' );

function theme_slug_setup() {
    add_theme_support('custom-logo', array(
        'height' => 100,
        'width' => 300,
        'flex-width' => true,
        'flex-height' => true,
    ));
}
add_action('after_setup_theme', 'theme_slug_setup');
/**
 * Register Sidebar
 */
function day_widgets_init() {
 
    /* Register the primary sidebar. */
    register_sidebar( array(
		'name'          => __( 'Services', 'day' ),
		'id'            => 'services',
		'description'   => __( 'Appears on the front page.', 'day' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
    ) );
    register_sidebar( array(
		'name'          => __( 'About', 'day' ),
		'id'            => 'about',
		'description'   => __( 'Appears on the front page in footer.', 'day' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
    ) );
    register_sidebar( array(
		'name'          => __( 'Gallery', 'day' ),
		'id'            => 'gallery',
		'description'   => __( 'Appears on the front page in footer.', 'day' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
    ) );
    register_sidebar( array(
		'name'          => __( 'Contact Us', 'day' ),
		'id'            => 'contact',
		'description'   => __( 'Appears on the front page in footer.', 'day' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
    ) );
}
add_action( 'widgets_init', 'day_widgets_init' );
?>