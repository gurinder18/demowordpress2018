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
            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                <?php
                    // Post thumbnail.
                    //day_post_thumbnail();
                ?>

                <header class="entry-header">
                    <?php
                        if ( is_single() ) :
                            the_title( '<h1 class="entry-title">', '</h1>' );
                        else :
                            the_title( sprintf( '<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' );
                        endif;
                    ?>
                </header><!-- .entry-header -->

                <div class="entry-content">
                    <?php
                        /* translators: %s: Name of current post */
                       
                        the_content( sprintf(
                            __( 'Continue reading %s', 'day' ),
                            the_title( '<span class="screen-reader-text">', '</span>', false )
                        ) );

                        wp_link_pages( array(
                            'before'      => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'day' ) . '</span>',
                            'after'       => '</div>',
                            'link_before' => '<span>',
                            'link_after'  => '</span>',
                            'pagelink'    => '<span class="screen-reader-text">' . __( 'Page', 'day' ) . ' </span>%',
                            'separator'   => '<span class="screen-reader-text">, </span>',
                        ) );
                    ?>
                </div><!-- .entry-content -->

                <?php
                    // Author bio.
                    if ( is_single() && get_the_author_meta( 'description' ) ) :
                        get_template_part( 'author-bio' );
                    endif;
                ?>

                <footer class="entry-footer">
                    <?php //day_entry_meta(); ?>
                    <?php edit_post_link( __( 'Edit', 'day' ), '<span class="edit-link">', '</span>' ); ?>
                </footer><!-- .entry-footer -->

            </article><!-- #post-## -->
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
<?php
	get_footer();