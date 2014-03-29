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

<?php if ( function_exists('yoast_breadcrumb') ) {
	yoast_breadcrumb('<p id="breadcrumbs">','</p>');
} ?>

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

<article class="single">
	<?php if ( has_post_thumbnail() ) {
				if (get_post_meta($post->ID, 'rustbuilt_resource_contact', true) != '')
					echo '<a href="' . get_post_meta($post->ID, 'rustbuilt_resource_contact', true) . '" target="_blank">' . get_the_post_thumbnail($post->ID, 'medium') . '</a>';
				else
					the_post_thumbnail('rustbuilt');
			} else { ?>
				<a href="http://www.builtinpgh.com/corrections" target="_blank"><img class="wp-post-image" src="<?php bloginfo('template_directory'); ?>/images/no-image.jpg" alt="<?php the_title(); ?>" /></a>
			<?php } ?>
			<h2><?php the_title(); ?></h2>
			<div class="resource-contact">
				<?php
					$url = get_post_meta($post->ID, 'rustbuilt_resource_contact', true);
					$twitter = get_post_meta($post->ID, 'rustbuilt_resource_twitter', true);
				?>
				<p>
					<?php if($url != '' ) { ?>
						  <a href="<?php echo $url; ?>" target="_blank">View Website<i class="icon-external-link"></i></a>
					<?php } 
						if($url != '' && $twitter != ''){ ?>
							 &#124;
					<?php }
						if($twitter != '' ) { ?>
							<a href="http://www.twitter.com/#!/<?php echo $twitter?>" target="_blank">@<?php echo $twitter ?></a>
					<? } ?>
				</p>
			</div>
			<div class="archive-meta">
				<?php if (get_the_term_list( $post->ID, 'market' ) != null ) { ?>
					<?php echo get_the_term_list( $post->ID, 'market', '<p>Markets: ', ', ', '</p>' ); ?>
				<?php } ?>
				<?php if (get_the_term_list( $post->ID, 'category' ) != null ) { ?>
					<?php echo get_the_term_list( $post->ID, 'category', '<p>Categories: ', ', ', '</p>' ); ?>
				<?php } ?>
				<?php
					$tag = get_the_tag_list();
					if ($tag != null ) { ?>
					<?php echo get_the_tag_list('<p>Tags: ', ', ', '</p>' ); ?>
				<?php } ?>
			</div>
			<?php the_content(); ?>
			<?php edit_post_link('Edit this post'); ?>
			<p class="correction">
				Is this information correct? If you see a mistake, <a href="http://builtinpgh.com/corrections/" target="_blank">let us know!</a>
			</p>
</article>

<?php endwhile; ?>

<?php get_footer() ?>