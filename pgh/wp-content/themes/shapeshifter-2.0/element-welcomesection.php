<div class="content_block">

	<?php $homename = get_option_tree('welcome_title'); ?>
	<a id="<?php echo $homename;?>" name="<?php echo $homename;?>" class="waypoint_marker"></a>


			<!-- ============================================== -->



			<!-- FlexSlider -->
			<?php if(get_option_tree('frontpage_slider') == 'Yes') { 
				 get_template_part( 'element', 'flexslider' ); 
			} else {} ?>	



			<!-- ============================================== -->



			<?php if(get_option_tree('frontpage_blurbrow') == 'Yes' ) { ?>
			<!-- Super Container - Three Column Row - Content comes from OptionTree -->
					
										
					<!-- 1/3 Columns -->
					<div class="four columns alpha">				
						<div class="module">						
							<?php if(get_option_tree('homepage_blurb_1_image')) { ?>	
							<div class="module-img">							
								<a href="<?php echo get_option_tree('homepage_blurb_1_url'); ?>" <?php if (get_option_tree('blurb_lightbox') == 'Yes') { ?>data-rel="prettyPhoto[Gallery]"<?php } ?>>
									<img src="<?php echo get_option_tree('homepage_blurb_1_image'); ?>" alt="image"/>
									<span></span>
								</a>							
								<div class="lightboxLink">
									<a class="popLink boxLink" href="<?php echo get_option_tree('homepage_blurb_1_image'); ?>" data-rel="prettyPhoto[Lightbox]" title="Lightbox" ></a>
								</div>						    
								<div class="thumbLink">
									<a class="popLink" href="<?php echo get_option_tree('homepage_blurb_1_url'); ?>" title="Full Post"></a>
								</div>						    
							</div>
							<?php } else {} ?>				
							<div class="module-meta">
								<h5><a href="<?php echo get_option_tree('homepage_blurb_1_url'); ?>"><?php echo get_option_tree('homepage_blurb_1_title'); ?></a></h5>	
								<p><?php echo get_option_tree('homepage_blurb_1_text'); ?></p>
							</div>						
						</div>				
					</div>

					<div class="four columns">				
						<div class="module">
							<?php if(get_option_tree('homepage_blurb_2_image')) { ?>
							<div class="module-img">							
								<a href="<?php echo get_option_tree('homepage_blurb_2_url'); ?>" <?php if (get_option_tree('blurb_lightbox') == 'Yes') { ?>data-rel="prettyPhoto[Gallery]"<?php } ?>>
									<img src="<?php echo get_option_tree('homepage_blurb_2_image'); ?>" alt="image"/>
									<span></span>
								</a>							
								<div class="lightboxLink">
									<a class="popLink boxLink" href="<?php echo get_option_tree('homepage_blurb_2_image'); ?>" data-rel="prettyPhoto[Lightbox]" title="Lightbox" ></a>
								</div>						    
								<div class="thumbLink">
									<a class="popLink" href="<?php echo get_option_tree('homepage_blurb_2_url'); ?>" title="Full Post"></a>
								</div>						    
							</div>		
							<?php } else {} ?>
							<div class="module-meta">
								<h5><a href="<?php echo get_option_tree('homepage_blurb_2_url'); ?>"><?php echo get_option_tree('homepage_blurb_2_title'); ?></a></h5>	
								<p><?php echo get_option_tree('homepage_blurb_2_text'); ?></p>
							</div>						
						</div>				
					</div>

					<div class="four columns omega">				
						<div class="module">	
							<?php if(get_option_tree('homepage_blurb_3_image')) { ?>
							<div class="module-img">							
								<a href="<?php echo get_option_tree('homepage_blurb_3_url'); ?>" <?php if (get_option_tree('blurb_lightbox') == 'Yes') { ?>data-rel="prettyPhoto[Gallery]"<?php } ?>>
									<img src="<?php echo get_option_tree('homepage_blurb_3_image'); ?>" alt="image"/>
									<span></span>
								</a>							
								<div class="lightboxLink">
									<a class="popLink boxLink" href="<?php echo get_option_tree('homepage_blurb_3_image'); ?>" data-rel="prettyPhoto[Lightbox]" title="Lightbox" ></a>
								</div>						    
								<div class="thumbLink">
									<a class="popLink" href="<?php echo get_option_tree('homepage_blurb_3_url'); ?>" title="Full Post"></a>
								</div>						    
							</div>			
							<?php } else {} ?>
							<div class="module-meta">
								<h5><a href="<?php echo get_option_tree('homepage_blurb_3_url'); ?>"><?php echo get_option_tree('homepage_blurb_3_title'); ?></a></h5>	
								<p><?php echo get_option_tree('homepage_blurb_3_text'); ?></p>
							</div>						
						</div>				
					</div>		
					<!-- /End 1/3 Columns -->
					
			<?php } else {} ?>	



			<!-- ============================================== -->



			<!-- Welcome Row -->
			<?php if(get_option_tree('frontpage_featurerow') == 'Yes' ) { ?>
			<!-- Super Container - Three Column Row - Content comes from OptionTree -->

				<br class="clearfix" />
						
				<div class="supertagline">
					<h1>A LISTING OF THE EVENTS, COMPANIES &#38; OPPORTUNITIES in PGH Innovation</h1>
					</div>	
				
				<br class="clearfix" />
								
			<?php } else {} ?>	



			<!-- ============================================== -->

			
</div>