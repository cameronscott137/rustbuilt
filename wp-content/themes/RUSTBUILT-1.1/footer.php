            <div id="contact" class="fifth">
                <div class="fifthContent">

                    <div class="leftColumn">
			<?php dynamic_sidebar('sidebar-3')?>
                    </div>
		    <div class="middleColumn">
			<?php dynamic_sidebar('sidebar-4')?>
                    </div>

                    <div class="rightColumn">

                        <h6>THANKS TO OUR SPONSORS</h6>

                        <a href="http://thinktiv.com"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactThinktivLogo.png" /></a>
                        <a class="even" href="http://drapertriangle.com"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactDraperLogo.png" /></a>
			<a href="http://saulewing.com"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactSaulLogo.png" /></a>
                        <a class="even" href="http://seahawkstudio.com"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactSeahawkStudioLogo.png" /></a>

			<!--a class="even" href="http://thinktiv.com"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactThinktivLogo.png" /></a-->
			<!--a href="http://thinktiv.com"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactThinktivLogo.png" /></a-->
			<!--a class="even" href="http://thinktiv.com"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactThinktivLogo.png" /></a-->	
			<a href="http://twitter.com/kitmueller"><img src="<?php bloginfo( 'stylesheet_directory' ); ?>/images/contactKitLogo.png" /></a>

                    </div>

                    <div class="footerLine clearfix">
						<!--p>
							&copy; Invented at <a href="http://thinktiv.com" target="_blank" >Thinktiv</a> &amp; Built by <a href="http://seahawkstudio.com">Seahawk Studio</a> &copy; 2012-2013 | All Rights Reserved.
						</p-->

<p>&copy; <?php echo date('Y'); ?> Innovated by <a class="footer_copy_anchor" href="http://someseeds.org" target="_blank" >Seed_Innovation</a> | All Rights Reserved</p>

						<div class="footer_social_link">
							<?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu' => 'social_links', 'container' => '', 'menu_class' => 'head_social clearfix' ) ); ?>
						</div>
					</div>

                </div> <!--.story-->
            </div> <!--#fifth-->

            <footer class="footer" role="contentinfo">

                <div id="inner-footer" class="wrap clearfix">

                </div> <!-- end #inner-footer -->

            </footer> <!-- end footer -->
		
        </div> <!-- end #container -->
		
    <?php wp_footer(); // js scripts are inserted using this function ?>

<script>
    jQuery(document).ready(function(){

		jQuery('#name').watermark('Name');
		jQuery('#website').watermark('Website');
		jQuery('#zipcode').watermark('Zip Code');
		jQuery('#iyyudu-iyyudu').watermark('Email');
                jQuery('#tjlhtl-tjlhtl').watermark('Email');
		jQuery('#subject').watermark('Subject');
		jQuery('#message').watermark('Message');
	});
</script>

    </body>

</html> <!-- end page. what a ride! -->