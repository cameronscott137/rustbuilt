				<!-- THE POST EXCERPT -->	
				<div class="the_content post type-post hentry excerpt clearfix" id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					
					<h2 class="title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
					
					<!--<div class="meta"> 
						<?php the_category(', ') ?>. <?php comments_popup_link(__ ('No Comments', 'skeleton'), __ ('1 Comment', 'skeleton'), __ngettext ('% comment', '% comments', get_comments_number (),'skeleton')); ?>
					</div>-->	 
				 	
				 	
				 	<!-- Grab the image path and set our variables -->
					<?php if (has_post_thumbnail( $post->ID )) {
		 								
						// Grab the URL for the thumbnail (featured image)
						$thumb = get_post_thumbnail_id(); 
						$image_full = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); 
						
							if (ot_get_option('default_image_height')) : 
								$imgheight = ot_get_option('default_image_height', $theme_options, false, true, 0 );
								$image = vt_resize( $thumb, '', 700, $imgheight, true );	
							else : 
								$image = vt_resize( $thumb, '', 700, 2000, false );	
							endif;
														
						// Check for a lightbox link, if it exists, use that as the value. 
						// If it doesn't, use the featured image URL from above.
						if(get_custom_field('lightbox_link')) { 							
							$lightbox_link = get_custom_field('lightbox_link'); 							
						} else {							
							$lightbox_link = $image_full[0];							
						}
					
					?>
						
						<div class="four columns alpha">
							<div class="aside"> 
								<a href="<?php if (get_option_tree('open_as_lightbox') == 'Yes') { echo $lightbox_link; } else { the_permalink(); } ?>" <?php if (get_option_tree('open_as_lightbox') == 'Yes') { ?>data-rel="prettyPhoto[Gallery]"<?php } ?>>
									<img src="<?php echo $image[url]; ?>" width="<?php echo $image[width]; ?>" height="<?php echo $image[height]; ?>" alt="<?php the_title(); ?>" />
								</a>
							</div> 
						</div>															
					 
						<div class="eight columns omega">
							<?php if (is_category( 'Blog' )) {?>
							<div class="date">
								<p><span><?php the_time(__ ('jS', 'skeleton'));?></span>	
								<?php the_time(__ ('F', 'skeleton'));?>							
								</p>
							</div><?} 
						else {?>
							<?php the_excerpt(); ?>
						</div> 
								<?php }?>
						
						<br class="clearfix" />
					
					<?php } else { ?>	 
						<div>
							<div class="date">
								<p><span><?php the_time('jS');?></span>	
								<?php the_time('F');?>							
								</p>
							</div>
							
							<?php the_excerpt(); ?>
						</div> 
					<?php } ?>					
				</div>
				<!-- /THE POST EXCERPT -->