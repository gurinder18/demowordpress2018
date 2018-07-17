<?php
/**
 * Template Name: Services
 * Template Post Type: post, page, service
 * Template for displaying a page just with the header and footer area and a "naked" content area in between.
 * Good for landingpages and other types of pages where you want to add a lot of custom markup.
 *
 * @package understrap
 */
	get_header();
?>
<div class="services">
	<div class="container">
		<div class="text-center">
			<h2>Our Services</h2>
		</div>
		<div class="text-center">
			<?php 
			 	$args = array(
						'post_type'=>'service'
					);  
				$the_query = new WP_Query($args);

				if($the_query->have_posts()): 
					while($the_query->have_posts()):
					 	$the_query->the_post() ;
			?>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<i class="<?php the_field('icon'); ?>"></i>
				<h3><?php the_title(); ?></h3>
				<p><?php  the_content(); ?></p>
			</div>
			<?php
					endwhile;
				endif;
			?>
		</div>
		<div class="text-center">
			<?php  
				$args = array(
						'post_type'=>'service'
					);  
				$the_query = new WP_Query($args);

				if($the_query->have_posts()): 
					while($the_query->have_posts()): 
						$the_query->the_post() ;
			?>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<i class="<?php the_field('icon'); ?>"></i>
				<h3><?php the_title(); ?></h3>
				<p><?php  the_content(); ?></p>
			</div>
			<?php
					endwhile;
				endif;
			?>
		</div>
	</div>
</div>
<?php
	get_footer();