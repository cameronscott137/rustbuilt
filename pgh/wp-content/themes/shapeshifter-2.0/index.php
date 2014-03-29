<?php get_header(); ?>

			
			<!-- TAG CONDITIONAL TITLE -->
			<?php if ( is_tag() ) :	?>			
				<h2 class="title"><span><?php _e('Tag:', 'skeleton')?> <?php single_tag_title(); ?></span></h2>
			<?php endif; ?>
						
			<!-- CATEGORY CONDITIONAL TITLE -->
			<?php if ( is_category() ) :	?>			
				<h2 class="search-title"><span><?php single_cat_title(); ?></span></h2> 
			<?php endif; ?>	
			
			
			<!-- ============================================== -->
			
			
			<!-- QUERY + START OF THE LOOP -->
			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>		
			
				<?php get_template_part( 'element', 'excerpt' ); ?>				
							
			<?php endwhile; ?>				
			<?php endif; ?>
			<!-- /POST LOOP -->
			
			
			<!-- ============================================== -->
			
			
		<?php get_template_part( 'element', 'pagination' ); ?>		


<!-- ============================================== -->


<?php get_footer(); ?>