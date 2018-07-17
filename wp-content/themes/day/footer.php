	
	<footer>
		<div class="container">
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<?php dynamic_sidebar('about'); ?>
			</div>
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">				
				<div class="text-center">
					<?php dynamic_sidebar('gallery'); ?>
				</div>	
			</div>
			
			<div class="col-md-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">				
				<?php dynamic_sidebar('contact'); ?>
			</div>
			
		</div>	
	</footer>
	
	<div class="sub-footer">
		<div class="container">
			<div class="social-icon">
				<div class="col-md-4">
					<ul class="social-network">
						<?php wp_nav_menu( array( 'theme_location' => 'footer' ) ); ?>
					</ul>	
				</div>
			</div>
			<div class="col-md-4 col-md-offset-4">
				<div class="copyright">
					<span id="copyright">&copy; Day 2015 by <a target="_blank" href="http://bootstraptaste.com/" title="Free Twitter Bootstrap WordPress Themes and HTML templates">Bootstrap Themes</a>.All Rights Reserved.</span>
				</div>
			</div>						
		</div>				
	</div>
		
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<?php wp_footer(); ?>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>	
  </body>
</html>