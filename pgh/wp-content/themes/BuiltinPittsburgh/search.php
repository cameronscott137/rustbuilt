<?php
/**
 * Search results page
 * 
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts()
 *
 * @package 	WordPress
 * @subpackage 	Starkers
 * @since 		Starkers 4.0
 */
?>
<?php get_header() ?>

<?php if ( have_posts() ): ?>
<h1>Search Results for "<?php echo get_search_query(); ?>"</h1>	
<ol>
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
			<h2><a href="<?php esc_url( the_permalink() ); ?>"><?php the_title(); ?></a></h2>
			<div class="resource-contact">
				<?php
					$url = get_post_meta($post->ID, 'bip_resource_contact', true);
					$email = get_post_meta($post->ID, 'bip_resource_email', true);
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
			<?php the_excerpt(); ?>
		</article>
		<hr class="clearfix"></hr>
	</li>
<?php endwhile; ?>
</ol>
<?php else: ?>
<h2>No results found for '<?php echo get_search_query(); ?>'</h2>
<?php endif; ?>
<div class="pagination">
<?php
global $wp_query;

$big = 999999999; // need an unlikely integer

echo paginate_links( array(
	'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
	'format' => '?paged=%#%',
	'current' => max( 1, get_query_var('paged') ),
	'total' => $wp_query->max_num_pages,
	'prev_text'    => __('«'),
	'next_text'    => __('»'),
) );
?>
</div>

<?php get_footer() ?>