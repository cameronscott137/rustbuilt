	<aside class="col-sm-2 sidebar">
			<header role="banner" itemscope="itemscope" itemtype="http://schema.org/WPHeader">
				<img class="img-responsive" src="<?php echo get_stylesheet_directory_uri(); ?>/images/bip_logo.svg">
                  <div class="navbar-collapse collapse bs-navbar-collapse">
                      <nav class="primary" itemscope itemtype="http://schema.org/SiteNavigationElement" role="navigation">
                          <?php wp_nav_menu( array( 'theme_location' => 'primary', 'items_wrap' => '<ul class="sidebar-nav">%3$s</ul>') ); ?>
                      </nav>
                  </div> <!-- /navbar-collapse -->
	      </header>
	</aside>