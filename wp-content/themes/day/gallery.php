<?php
/**
 * Template Name: Gallery
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
			<h2>Gallery</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat quod voluptate consequuntur ad quasi, dolores obcaecati ex aliquid, dolor provident </p>
		</div>
		<div class="container">
            <?php
               echo  the_post_thumbnail();
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
<?php
	get_footer();