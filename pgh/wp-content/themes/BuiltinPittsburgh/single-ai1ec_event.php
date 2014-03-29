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

<p id="breadcrumbs"><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> > <a href="<?php echo esc_url( home_url( '/' ) ); ?>#calendar">Events</a> > <?php the_title(); ?></p>


<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

<article class="single">
			<h2><?php the_title(); ?></h2>

			<?php the_content(); ?>
			<p class="correction">
				Is this information correct? If you see a mistake, <a href="http://builtinpgh.com/corrections/" target="_blank">let us know!</a>
			</p>
			<?php rustbuilt_sharing(); ?>


</article>

<?php endwhile; ?>

<?php get_footer() ?>