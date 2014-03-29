
<aside class="span3" id="sidebar">
	<div class="branding-container sticky">
		<div class="branding">
		<a href="<?php echo esc_url( home_url( '/' ) ); ?>">
			<div id="logo">
				<img src="http://builtinpgh.com/wp-content/uploads/2013/03/bip_logo.png" alt="Built in Pittsburgh">
			</div>
		</a>
	</div><!-- end .branding -->
		<nav class="primary" role="navigation" itemscope="itemscope" itemtype="http://schema.org/SiteNavigationElement">
			<?php wp_nav_menu( array( 'theme_location' => 'primary') ); ?>
		</nav>
		<nav class="mobile" role="navigation" itemscope="itemscope" itemtype="http://schema.org/SiteNavigationElement">
			<?php wp_nav_menu( array( 'menu' => 'mobile', 'container' => false, 'menu_id' => 'nav') ); ?>
		</nav>
		<nav class="secondary" role="navigation" itemscope="itemscope" itemtype="http://schema.org/SiteNavigationElement">
			<?php wp_nav_menu( array( 'theme_location' => 'secondary') ); ?>
		</nav>
	</div>
	</aside><!-- end #Sidebar -->