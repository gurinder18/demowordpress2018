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
		<div class="container">
			<div class="text-center">
				<h2><?php the_field("title"); ?></h2>
				</br>
				<div class="col-md-10 col-md-offset-1">
					<?php the_field("description"); ?>
					<p></p>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="btn-gamp"><a href="<?php the_field('button_1_link'); ?>"><?php  the_field("button_1"); ?></a></div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="gamp-btn"><a href="<?php the_field('button_2_link'); ?>"><?php  the_field("button_2"); ?></a></div>
				</div>
				
			</div>	
		</div>
	</div>
	<hr>
	<div class="services">
		<div class="container">
			<div class="text-center">
				<h2><?php  the_field("title_2"); ?></h2>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<i class="fa fa-heart-o"></i>
				<h3><?php  the_field("heading_1"); ?></h3>
				<p><?php  the_field("description_1"); ?></p>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
				<i class="fa fa-cloud"></i>
				<h3><?php  the_field("heading_2"); ?></h3>
				<p><?php  the_field("description_2"); ?></p>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
				<i class="fa fa-book"></i>	
				<h3><?php  the_field("heading_3"); ?></h3>
				<p><?php  the_field("description_3"); ?></p>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
				<i class="fa fa-gear"></i>	
				<h3><?php  the_field("heading_4"); ?></h3>
				<p><?php  the_field("description_4"); ?></p>
			</div>
		</div>					
	</div>
	<!-- <section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4><?php //the_field('title_1'); ?></h4>
				<p><?php //the_field('description_1'); ?></p>
			</div>
			<div class="right-image hidden-xs">
				<img src="" alt="" /><?php //the_field('image_1'); ?>
			</div>
		</div> 
	</section>-->
	<section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4><?php the_field("heading");  ?></h4>
				<p><em><?php the_field("sub_heading");  ?></em></p>
				<p><?php the_field("short_description");  ?></p>
			</div>
			<?php $image = get_field('image'); ?>
			<div class="right-image hidden-xs" style="background-image: url('<?php echo $image; ?>');"></div>
		</div>
	</section>

	<div class="gallery">
		<div class="text-center">
		<h2><a href="get_template_directory_uri()/gallery" id="gallery_link"><?php  the_field("title_3"); ?></a></h2>
			<p><?php  the_field("short_description_2"); ?></p>
		</div>
		<div class="container">
            <?php
                $image_ids = array('311','312','313');
                foreach($image_ids as $image):
                    $attach =  wp_get_attachment($image);
            ?>
            <div class="col-md-4">
                <figure class="effect-marley">
                    <img src="<?php echo $attach['src'] ?>" alt="<?php echo $attach['alt'] ?>" class="img-responsive"/>
                    <figcaption>
                        <h4><?php echo $attach['caption'] ?></h4>
                        <p><?php echo $attach['description'] ?></p>				
                    </figcaption>			
                </figure>
            </div>
            <?php endforeach; ?>
        </div><!-- .entry-content -->
        <div class="container">
            <?php
                $image_ids = array('314','315','316');
                foreach($image_ids as $image):
                    $attach =  wp_get_attachment($image);
            ?>
            <div class="col-md-4">
                <figure class="effect-marley">
                    <img src="<?php echo $attach['src'] ?>" alt="<?php echo $attach['alt'] ?>" class="img-responsive"/>
                    <figcaption>
                        <h4><?php echo $attach['caption'] ?></h4>
                        <p><?php echo $attach['description'] ?></p>				
                    </figcaption>			
                </figure>
            </div>
            <?php endforeach; ?>
        </div><!-- .entry-content -->
	</div>


<?php get_footer();
