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
<?php get_header(); ?>
    <div class="container main">
      <div class="row">


			<?php if ( have_posts() ): ?>
			<h2 class="archive-title">Category Archive: <?php echo single_cat_title( '', false ); ?></h2>
			<ul class="entry-content">
			<?php while ( have_posts() ) : the_post(); ?>
				<li class="entry entry-post">
					<article class="post post-<?php the_ID(); ?>">
									<h3 class="post-title"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
									<div class="post-meta">
										<time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate><?php the_date(); ?> <?php the_time(); ?></time><span class="comments"> | <?php comments_popup_link('Leave a Comment', '1 Comment', '% Comments'); ?></span>
									</div>
									<?php the_post_thumbnail();?>
									<div class="post-content">
										<?php the_excerpt(); ?>
									</div>

					</article>
				</li>
			<?php endwhile; ?>
			</ol>
			<?php else: ?>
			<h2>No posts to display in <?php echo single_cat_title( '', false ); ?></h2>
			<?php endif; ?>
	</div>

<?php get_footer(); ?>