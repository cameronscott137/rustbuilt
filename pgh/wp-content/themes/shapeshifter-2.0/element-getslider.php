<!-- Frontpage Conditionals -->
<?php if ( is_home() ) : ?> 

	<?php if(get_option_tree('frontpage_slider') == 'Yes') { ?>
		<?php get_template_part( 'element', 'flexslider' ); ?>
	<?php } ?>
				
<?php endif; ?>

		
<!-- Page Conditionals -->
<?php if ( is_page() ) : ?>

	<!-- Frontpage Slider Conditional -->		
	<?php if(get_custom_field('frontpage_slider') == 'Yes') :  				
		get_template_part( 'element', 'flexslider' ); 								
	endif; ?>

	<!-- PageSlider Conditional -->
	<?php if(get_custom_field('image_slider') == 'Yes') :				
		get_template_part( 'element', 'pageslider' ); 				
	endif; ?>
				
	<!-- Set a global variable for the page ID that we can use in the footer (outside of the loop) -->
	<?php $GLOBALS[ 'isapage' ] = 'yes'; 
	global $wp_query;
	$GLOBALS[ 'ourpostid' ] = $wp_query->post->ID; ?>

<?php endif; ?>


<!-- Post Conditionals -->
<?php if ( is_single() ) : ?>

	<!-- PageSlider Conditional -->
	<?php if(get_custom_field('image_slider') == 'Yes') {				
		get_template_part( 'element', 'postslider' ); 				
	} else {}; ?>
	
	<!-- Set a global variable for the page ID that we can use in the footer (outside of the loop) -->
	<?php $GLOBALS[ 'isapost' ] = 'yes'; 
	global $wp_query;
	$GLOBALS[ 'ourpostid' ] = $wp_query->post->ID; ?>

<?php endif; ?>