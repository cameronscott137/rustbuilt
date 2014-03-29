<?php
/*
 * Template Name: Traditional Blog (Small Images)
*/

get_header(); 
?>

			<?php get_template_part( 'element', 'getslider' ); ?>
			
			<?php get_template_part( 'element', 'pagecaption' ); ?>
	
			
			<?php if(get_custom_field('hide_title') == 'Yes') : else : ?>
			<h2 class="title"><span><?php the_title(); ?></span></h2>
			<?php endif; ?>
			
			
			<!-- Page Content (if it exists) -->
			<?php while ( have_posts() ) : the_post(); ?>	
			<div class="inline-content">
				<?php the_content(); ?>			
			</div>	
			<?php endwhile; ?>	
			
			
			<!-- ============================================== -->			
			
			
			<!-- CATEGORY QUERY + START OF THE LOOP -->
			<?php get_template_part( 'element', 'categoryfilterquery' ); ?>
			<?php while (have_posts()) : the_post(); ?>		
									
			
				<?php get_template_part( 'element', 'excerpt' ); ?>		
				
							
			<?php endwhile; ?>
			<!-- /STOP LOOP -->
			
			
			<!-- ============================================== -->		
			
		
			<?php get_template_part( 'element', 'pagination' ); ?>		


<?php get_footer(); ?>