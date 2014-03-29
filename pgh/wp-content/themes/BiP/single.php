<?php
/**
 * The Template for displaying all single posts
 *
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts()
 *
 * @package 	WordPress
 * @subpackage 	Starkers
 * @since 		Starkers 4.0
 */
?>
<?php get_header();?>

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

 <div class="container main">
    	<div class="row">
			<div class="col-sm-12">
			<article class="post post-<?php the_ID(); ?>">
				<h2 class="post-title"><?php the_title(); ?></h2>
				<div class="post-meta">
					<time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate><?php the_date(); ?> <?php the_time(); ?></time><span class="comments"> | <?php comments_popup_link('Leave a Comment', '1 Comment', '% Comments'); ?></span>
				</div>
				<?php the_post_thumbnail();?>
				<div class="post-content">
					<?php the_content(); ?>
				</div>
</article>
</div>

		</div><!-- /row -->
</div>


<?php endwhile; ?>

<?php get_footer();?>