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
<?php get_header() ?>

<p id="breadcrumbs"><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> > <a href="<?php echo esc_url( home_url( '/' ) ); ?>#speak-freely">Speak Freely</a> > <?php the_title(); ?></p>

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

<article class="single">
			<h1><?php the_title(); ?></h1>
			<?php the_content(); ?>
			<?php edit_post_link('Edit this post'); ?>
			<p class="correction">
				Is this information correct? If you see a mistake, <a href="http://builtinpgh.com/corrections/" target="_blank">let us know!</a>
			</p>
</article>

<?php endwhile; ?>

<?php get_footer() ?>