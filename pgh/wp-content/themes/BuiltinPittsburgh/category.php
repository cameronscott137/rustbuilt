<?php
/**
 * The template for displaying Category Archive pages
 *
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts()
 *
 * @package 	WordPress
 * @subpackage 	Starkers
 * @since 		Starkers 4.0
 */
?>
<?php get_header() ?>
<h1><?php single_cat_title( ); ?> </h1>
<?php echo category_description( $category_id ); ?> 

<?php if ( have_posts() ): ?>
<?php while ( have_posts() ) : the_post(); ?>
	<li class="archive">
		<article class="archive">
			<?php the_post_thumbnail('medium') ?>
			<h2><?php the_title(); ?></h2>
			<div class="archive-meta">
				<?php if (get_the_term_list( $post->ID, 'market' ) != null ) { ?>
					<?php echo get_the_term_list( $post->ID, 'market', 'Markets: ', ', ', '' ); ?><br/>
				<?php } ?>
				<?php if (get_the_term_list( $post->ID, 'category' ) != null ) { ?>
					<?php echo get_the_term_list( $post->ID, 'category', 'Categories: ', ', ', '' ); ?>
				<?php } ?>
					<?php echo get_the_tag_list('Tags: ', ',', '' ); ?>
			</div>
			<?php the_content(); ?>
						<?php edit_post_link(); ?> 
		</article>
		<hr class="clearfix"></hr>
	</li>
<?php endwhile; ?>
</ol>
<?php else: ?>
<h2>No posts to display in <?php echo single_cat_title( '', false ); ?></h2>
<?php endif; ?>

<?php get_footer() ?>