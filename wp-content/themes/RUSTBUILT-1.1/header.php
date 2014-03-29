<!DOCTYPE HTML>
<!--[if lt IE 7]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8 ie7"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9 ie8"><![endif]-->
<!--[if gt IE 8]><!--> <html <?php language_attributes(); ?> class="no-js"><!--<![endif]-->
	
<head>
    <meta charset="utf-8" />

    <title><?php wp_title( '|', false, 'right' ); ?></title>
		
    <script type="text/javascript" src="//use.typekit.net/mjm5eii.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>

    <link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_directory' ); ?>/fonts/fonts.css" />
    <link rel="stylesheet" type="text/css" media="only screen and (max-width: 480px)" href="<?php bloginfo( 'stylesheet_directory' ); ?>/css/stylebelow481.css" />
    <link rel="stylesheet" type="text/css" media="only screen and (min-width: 481px) and (max-width: 959px)" href="<?php bloginfo( 'stylesheet_directory' ); ?>/css/style480.css" />
    <link rel="stylesheet" type="text/css" media="only screen and (min-width: 768px) and (max-width: 959px)" href="<?php bloginfo( 'stylesheet_directory' ); ?>/css/style768.css" />

    <!-- Google Chrome Frame for IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- mobile meta (hooray!) -->
    <meta name="HandheldFriendly" content="True" />
    <meta name="MobileOptimized" content="320" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- icons & favicons (for more: http://themble.com/support/adding-icons-favicons/) -->
    <link rel="shortcut icon" href="<?php bloginfo( 'stylesheet_directory' ); ?>/favicon.ico" />

    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

    <!-- wordpress head functions -->
    <?php wp_head(); ?>
    <!-- end of wordpress head -->
    
    <!-- drop Google Analytics Here -->
    <!-- end analytics -->

<script type="text/javascript">
    if (typeof addthis_config !== "undefined") {
        addthis_config.data_track_clickback = false
    } else {
      var addthis_config = { data_track_clickback: false };
    }
</script>

    <script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/js/html5.js"></script>
    <script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/js/jquery.jqEasyCharCounter.min.js"></script>
    <script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/js/twtwidgets.js"></script>
    <script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/js/jquery.svg.min.js"></script>
    <script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/js/interactive.map.js"></script>
    <script type="text/javascript" src="<?php bloginfo( 'stylesheet_directory' ); ?>/js/jquery.watermark.min.js"></script>

</head>
	
    <body <?php body_class(); ?> >
	
        <div id="container">
			
            <header class="header" role="banner">

                <div class="navWrapper">
                    <div class="nav" role="navigation">
                        <?php wp_nav_menu( array( 'menu' => 'Nav', 'container' => '', 'menu_class' => 'nav top-nav clearfix' ) ); ?>
                        <div class="head_social_link">
                            <?php wp_nav_menu( array( 'theme_location' => 'primary', 'menu' => 'social_links', 'container' => '', 'menu_class' => 'head_social clearfix' ) ); ?>
                        </div>
                    </div>
                </div>

            </header> <!-- end header -->