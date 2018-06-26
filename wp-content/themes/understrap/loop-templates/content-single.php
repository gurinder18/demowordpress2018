<?php
/**
 * Single post partial template.
 *
 * @package understrap
 */

?>
<article <?php post_class(); ?> id="post-<?php the_ID(); ?>">

	<header class="entry-header">

		<?php the_title( '<h1 class="entry-title">', '</h1>' ); ?>

		<div class="entry-meta">

			<?php understrap_posted_on(); ?>

		</div><!-- .entry-meta -->

	</header><!-- .entry-header -->

	<?php echo get_the_post_thumbnail( $post->ID, 'large' ); ?>

	<div class="entry-content">

		<?php 
		the_content();
		//the_field('image');
		$image = get_field('image');
		$size = 'full'; // (thumbnail, medium, large, full or custom size)
		?>
			<div class="container-fluids table-responsive">
				<table class="">
					<tr>
					<?php 	if( $image ) {
						?>
						<td rowspan="7">
							<img class="pull-left" src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
						</td>
						<?php } ?>
						<td>
						<table class=" container-fluids table">
						<?php
						
						if(get_field('price'))
						{
						?>
						<tr>
							<th>Price : </th>
							<td><?php the_field('price'); ?></td>
						</tr>
						<tr>
							<th>ISBN : </th> 
							<td><?php the_field('isbn');?></td>
						</tr>
						<tr>
							<th>Auther : </th>
							<td><?php the_field('auther');?></td>
						</tr>
						<tr>
							<th>Date of Publish : </th> 
							<td><?php the_field('date_of_publish'); ?> </td>
						</tr>
						<tr>
							<th>Publisher : </th> 
							<td><?php the_field('publisher');?></td>
						</tr>
						<?php
						if(get_field('dummy_previews'))
						{
						?>
						<tr>
							<td>Previews : </td>
						</tr>
						<?php
							get_field('dummy_previews');
						}
						?>
						<tr>
							<td colspan="2"><a href="<?php the_field('buy_link') ?>"><button class="btn btn-outline-secondary">Buy</button></a></td>
						</tr>
						<?php
						}
						?>
						</table>
						</td>
					</tr>
				</table>
			</div>
		<?php
		wp_link_pages( array(
			'before' => '<div class="page-links">' . __( 'Pages:', 'understrap' ),
			'after'  => '</div>',
		) );
		?>

	</div><!-- .entry-content -->

	<footer class="entry-footer">

		<?php understrap_entry_footer(); ?>

	</footer><!-- .entry-footer -->

</article><!-- #post-## -->
