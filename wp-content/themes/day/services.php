<?php
/**
 * Template Name: Services
 *
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
			<?php dynamic_sidebar('services'); ?>
			<?php dynamic_sidebar('services'); ?>
		</div>
	</div>
</div>
<?php
	get_footer();