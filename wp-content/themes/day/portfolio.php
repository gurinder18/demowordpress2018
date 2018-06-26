<?php
/**
 * Template Name: Portfolio
 *
 * Template for displaying a page just with the header and footer area and a "naked" content area in between.
 * Good for landingpages and other types of pages where you want to add a lot of custom markup.
 *
 * @package understrap
 */

get_header();
?>
	<div class="gallery">
		<div class="text-center">
			<h2>Portfolio</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod voluptate consequuntur ad quasi, dolores obcaecati ex aliquid, dolor provident </p>
		</div>
		<div class="container">	
			<?php echo do_shortcode('[tlpportfolio layout="1" col="4" cat="6"]'); ?>
		</div>
	</div>
<?php
get_footer();