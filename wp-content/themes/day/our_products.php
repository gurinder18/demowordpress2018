<?php
/**
Template Name:  Our Products
**/
?>
    <?php 
		$your_query = new WP_Query( array('pagename'=>'our-products') );
		// "loop" through query (even though it's just one page) 
		while ( $your_query->have_posts() ) : $your_query->the_post();
		the_content();
		endwhile;
	?>
	