<?php get_header(); ?>

	
		<!-- 404 MESSAGE -->
			<?php if ( ! have_posts() ) : ?>
				<h2 class="title"><span>Ohhhh Snap! We can't find the page...</span></h2>
				<div class="the_content">	
					<p><?php _e( 'Apologies, but no results were found for the requested archive. Perhaps searching will help find a related post.', 'skeleton' ); ?></p>
					<?php get_template_part( 'element', 'search' ); ?>
				</div>
			<?php endif; ?>
			
			<!-- THE POST LOOP -->
			<?php while ( have_posts() ) : the_post(); ?>	
				
				<h2 class="title"><span><?php the_title(); ?></span></h2>
				<?php the_content(); ?>
				
			<?php endwhile; ?>		


<?php get_footer(); ?>


