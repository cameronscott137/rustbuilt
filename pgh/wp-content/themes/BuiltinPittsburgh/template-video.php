<?php
/*
Template Name: Video
*/
?>

<?php get_header() ?>

<p id="breadcrumbs"><a href="<?php echo esc_url( home_url( '/' ) ); ?>">Home</a> > <a href="<?php echo esc_url( home_url( '/' ) ); ?>speak-freely">Speak Freely: Founder's Spotlight</a> > <?php the_title(); ?></p>
<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
<h1><?php the_title(); ?></h1>
<?php the_content(); ?>
<?php endwhile; ?>

<?php get_footer() ?>