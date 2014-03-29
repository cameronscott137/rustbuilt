	<div class="content_block slide_block">
		
		<a id="blog" name="blog" class="waypoint_marker"></a>
		
		
		<?php if(get_post_meta($pagg->ID,'page_caption')) : ?>
			<div id="page-header">
				<span class="supertagline" style="margin: 8px 0 20px;"><?php echo get_post_meta($pagg->ID,'page_caption',true); ?> </span>
				<br class="clear" />
				<hr class="partial-bottom" />
			</div>
		<?php endif; ?>
		
		<?php if(get_post_meta($pagg->ID,'hide_title',true) == 'Yes') : else : ?>
			<h2 class="title"><span>Blog</span></h2>
		<?php endif; ?>

		<div class="content_body">
			<?php get_template_part( 'element', 'categoryfilterquery' ); ?>
  				<?php query_posts('category_name=blog&posts_per_page=3'); ?>

			<?php if (have_posts()) : while (have_posts()) : the_post(); ?>		
			
				<?php get_template_part( 'element', 'excerpt' ); ?>				
							
			<?php endwhile; ?>				
			<?php endif; ?>
			<!-- /POST LOOP -->


		</div>
		
		<br class="clearfix"/>
	
	</div>