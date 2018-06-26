<?php
/**
Template Name:  Homepage
**/
/**
 * The front page template file
 *
 * If the user has selected a static page for their homepage, this is what will
 * appear.
 * Learn more: https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Day
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>
	<div class="slider wow fadeInDown animated">		
		<?php echo do_shortcode('[smartslider3 slider=5]'); ?>
	</div><!--/#slider-->
		<?php

		// $pages = get_pages(18); 
		// //foreach ($pages as $page_data) {
		// 	$content = apply_filters('the_content', $pages->post_content); 
		// 	$title = $pages->post_title; 
		// 	echo $content; 
		// //}
		
		?>
<div class="about">
	<?php 
		// query for the about page
		$your_query = new WP_Query( array('pagename'=>'about-us') );
		// "loop" through query (even though it's just one page) 
		while ( $your_query->have_posts() ) : $your_query->the_post();
		?>
		<div class="container">
			<div class="text-center">
				<h2><?php the_title(); ?></h2>
				<div class="col-md-10 col-md-offset-1">
					<?php the_content(); ?>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="btn-gamp"><a href="<?php get_permalink(); ?>">HOME</a></div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="gamp-btn"><a href="<?php get_permalink(); ?>about-us">About Us</a></div>
				</div>
				
			</div>	
		</div>	
		<?php 
		endwhile;
		// reset post data (important!)
		wp_reset_postdata();
		?>		
	</div>
	<hr>
	<div class="services">
		<?php 
		// query for the about page
		$your_query = new WP_Query( array('pagename'=>'services') );
		// "loop" through query (even though it's just one page) 
		while ( $your_query->have_posts() ) : $your_query->the_post();
		endwhile;
		?>
		
		<div class="container">
			<div class="text-center">
				<h2>Our Services</h2>
			</div>
			<?php dynamic_sidebar('services'); ?>
		</div>			
	</div>
	<!-- <section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4><?php the_field('title_1'); ?></h4>
				<p><?php the_field('description_1'); ?></p>
			</div>
			<div class="right-image hidden-xs">
				<img src="" alt="" /><?php the_field('image_1'); ?>
			</div>
		</div> 
	</section>-->
	<section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4>Amet porro numquam ratione</h4>
				<p><em><?php get_template_part( 'our_products', 'page' ); ?>
			</div>
			<div class="right-image hidden-xs"></div>
		</div>
	</section>
	<div class="gallery">
		<div class="text-center">
			<h2>Portfolio</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod voluptate consequuntur ad quasi, dolores obcaecati ex aliquid, dolor provident </p>
		</div>
		<div class="container">	
			<?php echo do_shortcode('[tlpportfolio layout="1" col="3" number="3" cat="6"]'); ?>	
			<!-- <div class="col-md-4">
				<figure class="effect-marley">
					<img src="" alt="" class="img-responsive"/>
					<figcaption>
						<h4>sweet marley</h4>
						<p>Marley tried to convince her but she was not interested.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="" alt="" class="img-responsive"/>
					<figcaption>
						<h4>sweet marley</h4>
						<p>Marley tried to convince her but she was not interested.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="" alt="" class="img-responsive"/>
					<figcaption>
						<h4>sweet marley</h4>
						<p>Marley tried to convince her but she was not interested.</p>				
					</figcaption>			
				</figure>
			</div> -->
		</div>
	</div>


<?php get_footer();
