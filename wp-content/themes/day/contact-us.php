<?php
/**
 * Template Name: Contact Us
 *
 * Template for displaying a page just with the header and footer area and a "naked" content area in between.
 * Good for landingpages and other types of pages where you want to add a lot of custom markup.
 *
 * @package understrap
 */

get_header();
?>
<div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1715.1420636730759!2d76.70234385377677!3d30.710411878918546!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390feef615555555%3A0x89c1ef6b2b900d53!2sOrion+eSolutions+Pvt.+Ltd.!5e0!3m2!1sen!2sin!4v1529924367007" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>
<section class="contact-page">
        <div class="container">
            <div class="text-center">        
                <h2>Drop Your Message</h2>
                <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <?php echo do_shortcode('[gravityform id="1" title="false" description="false"]'); ?>
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->
	
<?php
get_footer();