<!-- ============================================== -->

	
<!-- Breakout Row -->

<?php 
if ( is_home() || is_front_page() ){

	if(get_option_tree('blog_scrolling') == 'Yes' ) { 
		 get_template_part( 'element', 'breakoutrow' ); 
	} 	

} else{
	
	if(get_option_tree('homepage_breakout_section') == 'Yes') { 
		get_template_part( 'element', 'breakoutrow' ); 
	} 

}

?>	


<!-- ============================================== -->


<!-- Super Container | Footer Widget Space (Optional) -->



		</div> 
		<!-- Twelve Columns Content Container -->
		
		<?php if (ot_get_option('sidebar_placement') == 'Right') { ?>	
		<!-- Header -->		
		<div class="four columns sidebar" id="section-sidebar">
			
			<nav>	
					<!-- Branding -->
					<div class="branding">
						<a href="<?php echo home_url(); ?>/" title="<?php echo bloginfo('blog_name'); ?>">
							<h1 id="logo">
								<?php $lightdark = '-lightbg';  if (ot_get_option('default_skin') == 'Dark') { $lightdark = '-darkbg'; } ?>    
								<?php $logopath = (get_option_tree('logo')) ? get_option_tree('logo') : WP_THEME_URL . "/assets/images/theme/logo/logo$lightdark.png"; ?>    		    		
								<img id="logotype" src="<?php echo $logopath; ?>" alt="<?php echo bloginfo('blog_name'); ?>" />
							</h1>
						</a>
					</div>
					<!-- /End Branding -->
					
					<hr class="partial-bottom branding-hr" />
					
					<!-- Navigation -->
					<?php get_template_part( 'element', 'navigation' ); ?>
					<!-- /Navigation -->
					
					<br class="clearfix"/>
					<hr class="partial-bottom" style="margin-top: 20px;" class="subnav-hr"/>
					
					<!-- Sub-Menu Widgets -->
					<?php dynamic_sidebar( 'default-widget-area' ); ?>		
					<!-- /Sub-Menu Widgets -->
					
			</nav>
			
		</div>
		<!-- /End Header -->
		<?php } ?>

	<!-- 960 Container -->
	<?php if (get_option_tree('footer_widgets') == 'Yes') { ?>

		<!-- footer -->
		<div id="footer" class="content_block <?php if( is_home() ) { echo 'slide_block'; } {} ?>">
		
			<a id="widgets_block" name="widgets_block"></a>
		
			<!-- 1/4 -->
			<div class="four columns alpha">
				<?php if ( !function_exists( 'dynamic_sidebar' ) || !dynamic_sidebar('footer-widget-1') ) ?>
			</div>
			<!-- /End 1/4 -->
			
			<!-- 2/4 -->
			<div class="four columns">
				<?php if ( !function_exists( 'dynamic_sidebar' ) || !dynamic_sidebar('footer-widget-2') ) ?>	
			</div>
			<!-- /End 2/4 -->
			
			<!-- 3/4 -->
			<div id="omega" class="four columns">
				<?php if ( !function_exists( 'dynamic_sidebar' ) || !dynamic_sidebar('footer-widget-3') ) ?>
			</div>
			<!-- /End 3/4 -->		
			
		</div>
		<!-- /End Footer -->		
		
<?php } else{} ?>
</div>		
<!-- Super Container for entire site -->


<!-- ============================================== -->

</div>
<!-- Super Container - SubFooter Space -->
<div class="super-container full-width" id="section-sub-footer">		

	<!-- 960 Container -->
	<div class="container">

		<div class="sixteen columns">	
						
				<span class="copyright">&copy; 2012 Innovated by Seed_Innovation | All Rights Reserved</span>
				<span class="backtotop"><a href="#top">Back to the top &#11014;</a></span>
		</div>

	</div>
	<!-- /End 960 Container -->
	
</div>
<!-- /End Super Container -->



<!-- Default Portfolio View - Grabs the variable set in the template-xxx.php files -->							
<?php  	

if($GLOBALS[ 'portfolio_view' ] == 'Hybrid') : ?>

	<script type="text/javascript">								
		(function($) {				
			 // Hybrid View Defaults 
				 jQuery("#portfolio-list .module-container").removeClass("sixteen columns").addClass("columns");
				 jQuery("#portfolio-list .module-img").removeClass("twelve columns alpha");
				 jQuery("#portfolio-list .module-meta").fadeIn(300).removeClass("omega").addClass("columns alpha visible");
				 jQuery(".list_btn").css("opacity","1");
				 jQuery(".hybrid_btn").css("opacity","0.5");
				 jQuery(".grid_btn").css("opacity","1");
		})(jQuery);
	</script>			 

<?php elseif($GLOBALS[ 'portfolio_view' ] == 'List') : ?>

	<script type="text/javascript">									
		(function($) {				
			 // List View Defaults 
				 jQuery("#portfolio-list .module-container").removeClass("four one-third columns").addClass("sixteen columns");			 
				 jQuery("#portfolio-list .module-img").addClass("eight columns alpha");
				 jQuery("#portfolio-list .module-meta").fadeIn(300).removeClass("alpha").addClass("four columns omega visible");
				 jQuery(".list_btn").css("opacity","0.5"); 
				 jQuery(".hybrid_btn").css("opacity","1");
				 jQuery(".grid_btn").css("opacity","1");
		})(jQuery);
	</script>
	
<?php else : ?>

	<script type="text/javascript">							
		(function($) {
			 // Grid View Defaults 
			 //	 $("#portfolio-list .module-container").removeClass("sixteen columns").addClass("four columns");
			 //	 $("#portfolio-list .module-img").removeClass("twelve columns alpha");
			 //	 $("#portfolio-list .module-meta").fadeOut(100).removeClass("four columns alpha omega visible");
				 jQuery(".list_btn").css("opacity","1");
				 jQuery(".hybrid_btn").css("opacity","1");
				 jQuery(".grid_btn").css("opacity","0.5");
		})(jQuery);
	</script>
	
<?php endif;  ?>
<!--Google Analytics-->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36638852-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<!-- end Analytics -->
<script type="text/javascript">
//<![CDATA[ 
$(window).load(function(){
$(function() {
    var top = $('#section-sidebar').offset().top - parseFloat($('#section-sidebar').css('marginTop').replace(/auto/, 0));
    var footTop = $('#footer').offset().top - parseFloat($('#footer').css('marginTop').replace(/auto/, 0));

    var maxY = footTop - $('#section-sidebar').outerHeight();

    $(window).scroll(function(evt) {
        var y = $(this).scrollTop();
        if (y > top) {
            if (y < maxY) {
                $('#section-sidebar').addClass('fixed').removeAttr('style');
            } else {
                $('#section-sidebar').removeClass('fixed').css({
                    position: 'absolute',
                    top: (maxY - top) + 'px'
                });
            }
        } else {
            $('#section-sidebar').removeClass('fixed');
        }
    });
});
});
</script>			
<!-- End Default Portfolio View -->
					
<?php wp_footer(); ?>
<?php get_template_part( 'element', 'slidervars' ); ?>

</body>
</html>