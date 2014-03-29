<?php
/*
Template Name: Redirect
*/
?>

<?php get_header() ?>


<?php 
  header( "refresh:5;url=http://www.builtinpgh.com" );
?>

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
<h2><?php the_title(); ?></h2>
<?php the_content(); ?>
<?php endwhile; ?>

<?php get_footer(); ?>