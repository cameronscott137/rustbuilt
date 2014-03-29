<?php
/*
Template Name: Contact
*/
?>

<?php get_header(); ?>
    <div class="container page">
      <div class="row">
      	<div class="col-md-6">
			<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
			<h2><?php the_title(); ?></h2>
			<?php the_content(); ?>
			<?php endwhile; ?>
		</div>
		<div class="col-md-6">
			<div id="map-canvas"></div>
		</div>
	  </div> <!-- /row -->
<?php get_footer(); ?>