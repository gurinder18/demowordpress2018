<?php
/**
Template Name:  About Us
**/
get_header();
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
	
	<section id="about-us">
        <div class="container">	
			<div class="text-center wow fadeInDown">
				<h2>Skills</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			<div class="skill-wrap clearfix">											
				<div class="row">		
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="joomla-skill">                                   
								<p><em>85%</em></p>
								<p>Joomla</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="html-skill">                                  
								<p><em>95%</em></p>
								<p>HTML</p>
							</div>
						</div>
					</div>
					
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
							<div class="css-skill">                                    
								<p><em>80%</em></p>
								<p>CSS</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
							<div class="wp-skill">
								<p><em>90%</em></p>
								<p>Wordpress</p>                                     
							</div>
						</div>
					</div>					
				</div>	
            </div>
			
			<!-- our-team -->
			<div class="team">
				<div class="text-center wow fadeInDown">
					<h2>Our Team</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
				</div>

				<div class="row clearfix">
					<div class="col-md-4 col-sm-6">	
						<?php 
							$args = array(
								'post_type' => 'team-member',
								'offset' => 0,
								'posts_per_page' => 1
							);
							$members = new WP_Query( $args );
							while( $members->have_posts() ) {
								$members->the_post();
						?>
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="<?php the_field('image'); ?>" alt=""></a>
								</div>
								<div class="media-body">
									<h4><?php the_title(); ?></h4>
									<h5><?php the_field('designation'); ?></h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#"><?php the_field('technology_1'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_2'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_3'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_4'); ?></a></li>
									</ul>
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p><?php the_content(); ?></p>
						</div>
						<?php }
							wp_reset_postdata();
						?>
					</div><!--/.col-lg-4 -->
					
					
					<div class="col-md-4 col-sm-6 col-md-offset-2">	
					<?php 
						$args = array(
							'post_type' => 'team-member',
							'offset' => 1,
							'posts_per_page' => 1
						);
						$members = new WP_Query( $args );
						while( $members->have_posts() ) {
							$members->the_post();
					?>
					<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
						<div class="media">
							<div class="pull-left">
								<a href="#"><img class="media-object" src="<?php the_field('image'); ?>" alt=""></a>
							</div>
							<div class="media-body">
								<h4><?php the_title(); ?></h4>
								<h5><?php the_field('designation'); ?></h5>
								<ul class="tag clearfix">
									<li class="btn"><a href="#"><?php the_field('technology_1'); ?></a></li>
									<li class="btn"><a href="#"><?php the_field('technology_2'); ?></a></li>
									<li class="btn"><a href="#"><?php the_field('technology_3'); ?></a></li>
									<li class="btn"><a href="#"><?php the_field('technology_4'); ?></a></li>
								</ul>
								<ul class="social_icons">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
							</div>
						</div><!--/.media -->
						<p><?php the_content(); ?></p>
					</div>
					<?php }
						wp_reset_postdata();
					?>
					</div><!--/.col-lg-4 -->					
				</div> <!--/.row -->
				<div class="row team-bar">
					<div class="first-one-arrow hidden-xs">
						<hr>
					</div>
					<div class="first-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="second-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
					<div class="third-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="fourth-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
				</div> <!--skill_border-->       

				<div class="row clearfix">   
					<div class="col-md-4 col-sm-6 col-md-offset-2">	
						<?php 
							$args = array(
								'post_type' => 'team-member',
								'offset' => 2,
								'posts_per_page' => 1
							);
							$members = new WP_Query( $args );
							while( $members->have_posts() ) {
								$members->the_post();
						?>
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="<?php the_field('image'); ?>" alt=""></a>
								</div>
								<div class="media-body">
									<h4><?php the_title(); ?></h4>
									<h5><?php the_field('designation'); ?></h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#"><?php the_field('technology_1'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_2'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_3'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_4'); ?></a></li>
									</ul>
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p><?php the_content(); ?></p>
						</div>
						<?php }
							wp_reset_postdata();
						?>
					</div>
					<div class="col-md-4 col-sm-6 col-md-offset-2">
						<?php 
							$args = array(
								'post_type' => 'team-member',
								'offset' => 3,
								'posts_per_page' => 1
							);
							$members = new WP_Query( $args );
							while( $members->have_posts() ) {
								$members->the_post();
						?>
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="<?php the_field('image'); ?>" alt=""></a>
								</div>
								<div class="media-body">
									<h4><?php the_title(); ?></h4>
									<h5><?php the_field('designation'); ?></h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#"><?php the_field('technology_1'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_2'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_3'); ?></a></li>
										<li class="btn"><a href="#"><?php the_field('technology_4'); ?></a></li>
									</ul>
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p><?php the_content(); ?></p>
						</div>
						<?php }
							wp_reset_postdata();
						?>
					</div>
				</div>	<!--/.row-->
			</div><!--section-->
		</div><!--/.container-->
    </section><!--/about-us-->
  </body>
</html>
<?php get_footer(); ?>