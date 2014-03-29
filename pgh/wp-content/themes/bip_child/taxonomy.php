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

<?php $term = get_term_by( 'slug', get_query_var( 'term' ), get_query_var( 'taxonomy' ) ); ?>
							
<h1><?php echo $term->name; ?></h1>	
	<?php
		$termDiscription = term_description( '', get_query_var( 'taxonomy' ) );
			if($termDiscription != null) : ?>
				<div class="archive-desc"><?php echo $termDiscription; ?></div>
				<?php endif; ?>
<ol>
<?php while ( have_posts() ) : the_post(); ?>
	<li class="archive">
		<article class="archive">
			<a class="anchor" id="<?php echo( basename(get_permalink()) ); ?>"></a>
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
					$twitter = get_post_meta($post->ID, 'bip_resource_twitter', true);
				?>
				<p>
					<?php if($url != '' ) { ?>
						  <a href="<?php echo $url; ?>" target="_blank">View Website</a>
					<?php } 
						if($url != '' && $twitter != ''){ ?>
							 &#124;
					<?php }
						if($twitter != '' ) { ?>
							<a href="mailto:<?php echo $twitter?>?subject=We found you on Built in PGH and wanted to say hello!"><?php echo $twitter ?></a>
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