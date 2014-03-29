<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.ico"/>
<?php // Loads HTML5 JavaScript file to add support for HTML5 elements in older IE versions. ?>
    <!--[if lt IE 9]>
    <script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script>
    <![endif]-->



<?php wp_head(); ?>
</head>
  <body <?php body_class(); ?> itemscope itemtype="http://schema.org/WebPage">
<div class="navbar-wrapper fixed">
	     <header role="banner" itemscope="itemscope" itemtype="http://schema.org/WPHeader">
              <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                  <div class="container">
                      <div class="row">
                          <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#nav">
                                  <span class="sr-only">Toggle navigation</span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="<?php bloginfo('url'); ?>"><img class="logo" src="<?php echo get_stylesheet_directory_uri(); ?>/images/bip_logo_horiz.svg" alt="RustBuilt Pittsburgh Logo"><span class="beta">(beta)</span></a>
                          </div><!-- navbar-header -->
                          
                          <div class="navbar-collapse collapse" id="nav">
                                  <nav class="primary" itemscope itemtype="http://schema.org/SiteNavigationElement">
                                      <?php wp_nav_menu( array( 'theme_location' => 'primary', 'items_wrap' => '<ul class="nav navbar-nav navbar-right">%3$s</ul>') ); ?>
                                  </nav>
                                 <!--<ul class="nav navbar-nav navbar-right">
                                    <li><a href="#" class="pull-right btn btn-default login" data-toggle="modal" data-target="#login">Login</a></li>
                                  </ul>-->
                          </div> <!-- /navbar-collapse -->
                    </div><!-- /row -->
              </div><!-- /container -->
            </div><!-- /navbar -->
      </header>
  </div> <!-- /navbar-wrapper -->



    <main class="main" role="main" itemprop="mainContentOfPage" itemscope="itemscope" itemtype="http://schema.org/Blog">