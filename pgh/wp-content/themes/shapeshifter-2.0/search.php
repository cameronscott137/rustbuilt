<?php get_header(); ?>
		
			
			<h2 class="search-title"><span>
				<!-- Search CONDITIONAL TITLE -->
				<?php if ( is_search() ) :	?>		
				<?php _e('Search Results for', 'skeleton') ?> "<?php the_search_query() ?>"
				<?php endif; ?>
				
				<!-- TAG CONDITIONAL TITLE -->
				<?php if ( is_tag() ) :	?>			
					<?php single_tag_title(); ?>
				<?php endif; ?>
							
				<!-- CATEGORY CONDITIONAL TITLE -->
				<?php if ( is_category() ) :	?>			
					<?php single_cat_title(); ?>
				<?php endif; ?>	
			</span></h2>
			
			
			<!-- ============================================== -->
			
			
			<!-- QUERY + START OF THE LOOP -->
			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>				
					
				<?php get_template_part( 'element', 'excerpt' ); ?>		
							
			<?php endwhile; ?>
			<?php endif; ?>	
			<!-- /STOP LOOP -->
			
			
			<!-- ============================================== -->
			
			
		<!-- Previous / More Entries -->
		<div class="article_nav">
		<br class="clearfix" />
		<hr />
			<div class="p button"><?php next_posts_link(__('Previous Posts', 'skeleton')); ?></div>
			<div class="m button"><?php previous_posts_link(__('Next Posts', 'skeleton')); ?></div>
		</div>
		<!-- </Previous / More Entries -->
		


<!-- ============================================== -->


<?php get_footer(); ?>