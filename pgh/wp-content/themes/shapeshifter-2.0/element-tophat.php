<!-- Top Hat -->
<?php if (get_option_tree('top_hat') == 'Yes') { ?>
<div class="super-container full-width" id="section-tophat">

	<!-- 960 Container -->
	<div class="container">			
		
		<div class="sixteen columns">
		
			<span class="subscribe">Subscribe: 
				<a href="<?php bloginfo('rss2_url'); ?>" target="_blank">RSS</a>
				<?php if (get_option_tree('email_subscribe')) : ?> | <a href="<?php echo get_option_tree('email_subscribe'); ?>">Email</a><?php endif; ?>
			</span>
			
			<?php if (get_option_tree('header_social') == 'No') { } else { ?> 

			<div class="five columns omega" style="float: right; height: 18px;" id="tagline">
				<?php get_template_part( 'element', 'getsocial' ); ?>
			</div>	
			
			<?php } ?>
			
			<!-- <span class="tagline">
				<?php echo get_option_tree('top_hat_blurb'); ?>
			</span> -->
			
		</div>
		
	</div>
	
</div>
<?php } else{} ?>