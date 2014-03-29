<?php
/**
 * The default template for displaying content. Used for both single and index/archive/search.
 *
 * @package WordPress
 * @subpackage Twenty_Twelve
 * @since Twenty Twelve 1.0
 */
?>

			<article class="post post-<?php the_ID(); ?>">
				<h3 class="post-title"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
				<div class="post-meta">
					<time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate><?php the_date(); ?> <?php the_time(); ?></time><span class="comments"> | <?php comments_popup_link('Leave a Comment', '1 Comment', '% Comments'); ?></span>
				</div>
				<?php the_post_thumbnail();?>
				<div class="post-content">
					<?php the_content(); ?>
				</div>
			</article>