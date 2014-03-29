<?php get_header(); ?>

  

<!-- CATEGORY QUERY + START OF THE LOOP -->
<?php while (have_posts()) : the_post(); ?>		
			
		
		<?php if(get_custom_field('remove_sidebar') == 'Yes') { $remove_sidebar = 'sixteen'; } ?>
		
		<!-- CONTENT -->
		<div class="content <?php echo $remove_sidebar ?>" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<?php if ( function_exists('yoast_breadcrumb') ) {
					yoast_breadcrumb('<p id="breadcrumbs">','</p>');
			} ?>

			
			<h2 class="title"><span><?php the_title(); ?></span></h2>

					
										
			<div class="meta"> 
				<?php _e('Posted on', 'skeleton') ?> <?php the_time(__ ('F', 'skeleton'));?> <?php the_time(__ ('jS', 'skeleton'));?>, <?php _e('by', 'skeleton') ?> <?php the_author(); ?> <?php _e('in', 'skeleton')?> <?php the_category(', ') ?>. <!--<?php comments_popup_link(__ ('No Comments', 'skeleton'), __ ('1 Comment', 'skeleton'), __ngettext ('% comment', '% comments', get_comments_number (),'skeleton')); ?>-->
			</div>	
			<hr />
				 	
			<!-- Featured Image -->
			<?php if(get_option_tree('show_featured_image') == 'Yes') : ?>

				<?php if (has_post_thumbnail( $post->ID )) {				 		
						
						// Grab the URL for the thumbnail (featured image)
							$thumb = get_post_thumbnail_id(); 
							$image_full = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); 
					 		$imgheight = ot_get_option('default_image_height', $theme_options, false, true, 0 );
							$image = vt_resize( $thumb, '', 450, $imgheight, false );		
							
							// Check for a lightbox link, if it exists, use that as the value. 
							// If it doesn't, use the featured image URL from above.
							if(get_custom_field('lightbox_link')) { 							
								$lightbox_link = get_custom_field('lightbox_link'); 							
							} else {							
								$lightbox_link = $image_full[0];							
							}
						
						?>
						
					<a href="<?php echo $lightbox_link; ?>" data-rel="prettyPhoto[<?php echo $post_slug; ?>]">
						<img class="aligncenter" src="<?php echo $image[url]; ?>" width="<?php echo $image[width]; ?>" height="<?php echo $image[height]; ?>" alt="<?php the_title(); ?>" />
					</a>
							
				<br class="clearfix" />					
				<?php } else {} ?>	 
				
			<?php endif; ?>
			
			
			
				
				
				<!-- THE POST LOOP -->				
				
				
				<!-- ============================================ -->
			
			
				<!-- THE POST CONTENT -->	
				<div class="the_content post type-post hentry excerpt clearfix">	
					
					
					
					<?php the_content(); ?>
					<br />
					<?php wp_link_pages('before=<div id="page-links"><span>Pages:</span>&after=</div>&link_before=<div>&link_after=</div>'); ?>
					<hr />
										
					
					<!-- META AREA -->
					<div class="meta-space">					
						<div class="tags clearfix <?php echo get_option_tree('tags_color'); ?>">
							<?php the_tags(' ',' '); ?>				
						</div>				
					</div> 
					<!-- /META AREA -->
					
				
				</div>
				<!-- /THE POST CONTENT -->
				
				<br />
				<hr class="remove-top"/>

				
				
							
			<?php endwhile; ?>
			<!-- /POST LOOP -->			
	
		
		</div>	
		<!-- /CONTENT -->


<!-- ============================================== -->


<?php get_footer(); ?>