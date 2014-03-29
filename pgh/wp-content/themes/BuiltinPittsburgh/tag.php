<?php
/**
 * The template for displaying Archive pages.
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
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


<?php
$posts = query_posts($query_string . '&orderby=title&order=asc&posts_per_page=-1');
if ( have_posts() ): ?>

<h1><?php single_tag_title(); ?></h1>	
<div class="archive-desc"><?php if (tag_description() != null){ ?></div>
	<p><?php echo tag_description( $tag_id ); ?></p> 
<?php } ?>
<?php while ( have_posts() ) : the_post(); ?>
	<li class="archive">
		<article class="archive">
			<?php if ( has_post_thumbnail() ) {
				if (get_post_meta($post->ID, 'bip_resource_contact', true) != '')
					echo '<a href="' . get_post_meta($post->ID, 'bip_resource_contact', true) . '" target="_blank">' . get_the_post_thumbnail($post->ID, 'medium') . '</a>';
				else
					the_post_thumbnail('medium');
			} else { ?>
				<a href="http://www.builtinpgh.com/corrections" target="_blank"><img src="<?php bloginfo('template_directory'); ?>/images/no-image.png" alt="<?php the_title(); ?>" /></a>
			<?php } ?>
			<h2><?php the_title(); ?></h2>
			<div class="resource-contact">
				<?php
					$url = get_post_meta($post->ID, 'bip_resource_contact', true);
					#$email = get_post_meta($post->ID, 'bip_resource_email', true);
				?>
				<p>
					<?php if($url != '' ) { ?>
						  <a href="<?php echo $url; ?>" target="_blank">View Website</a>
					<?php } 
						if($url != '' && $email != ''){ ?>
							 &#124;
					<?php }
						if($email != '' ) { ?>
							<a href="mailto:<?php echo $email?>?subject=We found you on Built in PGH and wanted to say hello!"><?php echo $email ?></a>
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
			<?php edit_post_link(); ?> 
			<p class="correction">
				Is this information correct? If you see a mistake, <a href="http://builtinpgh.com/corrections/" target="_blank">let us know!</a>
			</p>
		</article>
		<hr class="clearfix"></hr>
	</li>
<?php endwhile; ?>
</ol>
<?php else: ?>
<h2>No posts to display</h2>	
<?php endif; ?>
</div>

<?php get_footer() ?>