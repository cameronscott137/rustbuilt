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

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

<article class="single">
	<h2><?php the_title(); ?></h2>
	<?php the_content(); ?>			
</article>

<?php endwhile; ?>

<?php get_footer() ?>