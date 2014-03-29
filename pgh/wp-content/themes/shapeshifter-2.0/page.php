<?php get_header(); ?>

		<?php get_template_part( 'element', 'getslider' ); ?>
		
		<?php get_template_part( 'element', 'pagecaption' ); ?>
		
			
			<!-- THE POST LOOP -->
			<?php while ( have_posts() ) : the_post(); ?>	
				
				<?php if(get_custom_field('hide_title') == 'Yes') : else : ?>
				<h2 class="title"><span><?php the_title(); ?></span></h2>
				<?php endif; ?>
				
				<!-- FEATURED IMAGE (optional) -->
				<?php if(get_option_tree('show_featured_image') == 'Yes') : ?>
						<?php if (has_post_thumbnail( $post->ID )) 	{												
						$image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); ?>
						<a class="featured-image-insert" href="<?php echo $image[0]; ?>" data-rel="prettyPhoto">
							<img class="aligncenter" src="<?php echo $image[0]; ?>" alt="<?php the_title(); ?>" />
						</a>
					<br class="clearfix" />					
					<?php } else {} ?>					
				<?php endif; ?>
			
				<?php the_content(); ?>
			
				<br class="clearfix" />
				<hr />
				
				<?php wp_link_pages('before=<br /><div id="page-links"><span>Pages:</span>&after=</div><hr />&link_before=<div>&link_after=</div>'); ?>
				
				
			<?php endwhile; ?>			


<?php get_footer(); ?>