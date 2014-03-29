<!DOCTYPE HTML>
<!--[if IEMobile 7 ]><html class="no-js iem7" manifest="default.appcache?v=1"><![endif]--> 
<!--[if lt IE 7 ]><html class="no-js ie6" lang="en"><![endif]--> 
<!--[if IE 7 ]><html class="no-js ie7" lang="en"><![endif]--> 
<!--[if IE 8 ]><html class="no-js ie8" lang="en"><![endif]--> 
<!--[if (gte IE 9)|(gt IEMobile 7)|!(IEMobile)|!(IE)]><!--><html class="no-js" lang="en"><!--<![endif]-->
	<head>
		<title><?php wp_title( '|' ); ?></title>
		<meta charset="<?php wp_title( '|', true, 'right' ); ?>" />
	  	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<meta property="og:image" content="http://builtinpgh.com/wp-content/uploads/2013/06/bip_og.png" />
		<meta property="og:description" content="A directory of the events, companies, and opportunities in Pittsburgh innovation. Startups N'at." />
		<meta property="og:type" content="website" />
		<meta name="description" content="A directory of the events, companies, and opportunities in Pittsburgh innovation. Startups N'at." />
		<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
		<link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/img/favicon.ico"/>
		<!-- Fonts -->
		<script type="text/javascript" src="//use.typekit.net/kbo2ogf.js"></script>
		<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
		<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
		<!-- Styles -->
		<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>">
		<?php wp_head(); ?>
	</head>
	<body <?php body_class(); ?> itemscope="itemscope" itemtype="http://schema.org/WebPage">
	<div class="container-fluid page">
	<!-- Fluid Container for the Entire Site -->
		<div class="row-fluid" id="page">
			<div id="search">
				<?php get_search_form(); ?>
			</div>
		<?php get_sidebar()?>
			<hgroup itemscope="itemscope" itemtype="http://schema.org/WPHeader">
				<h1 id="site-title"><span><a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></span></h1>
			</hgroup>
			<div class="span9" id="main" role="main" itemprop="mainContentOfPage" itemscope="itemscope" itemtype="http://schema.org/Blog">


