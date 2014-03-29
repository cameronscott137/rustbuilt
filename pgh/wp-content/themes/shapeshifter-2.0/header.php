<!DOCTYPE html >
<!--[if lt IE 7 ]> <html class="no-js ie6" <?php language_attributes(); ?>> <![endif]-->
<!--[if IE 7 ]>    <html class="no-js ie7" <?php language_attributes(); ?>> <![endif]-->
<!--[if IE 8 ]>    <html class="no-js ie8" <?php language_attributes(); ?>> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="no-js" <?php language_attributes(); ?>> <!--<![endif]-->

<head>

	<title><?php 
	 
		// Add the blog name.
		bloginfo( 'name' );
	
		// Add the blog description for the home/front page.
		$site_description = get_bloginfo( 'description', 'display' );
		if ( $site_description && ( is_home() || is_front_page() ) )
			echo " | $site_description";
	
		// Add a page number if necessary:
		if ( $paged >= 2 || $page >= 2 )
			echo ' | ' . sprintf( __( 'Page %s', 'mdnw' ), max( $paged, $page ) );
	
		?></title>
	
	<meta charset="utf-8">	
	
	<?php $theme_options = get_option('option_tree'); ?>	
	
	<!-- Mobile Specific Metas
  	================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" /> 
	
	<link rel="profile" href="http://gmpg.org/xfn/11" />
	<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
	<link rel="alternate" type="text/xml" title="RSS .92" href="<?php bloginfo('rss_url'); ?>" />
	<link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="<?php bloginfo('atom_url'); ?>" />
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />
	<link rel="shortcut icon" href="<?php echo get_option_tree('favicon'); ?>" type="image/gif" />
				
	<?php if ( ! isset( $content_width ) ) 
	    $content_width = 960;
	?>	
	
	<?php wp_head(); ?>	
	<?php get_template_part( 'element', 'styleloader' ); ?>

<!--Typekit-->
<script type="text/javascript" src="//use.typekit.net/kbo2ogf.js"></script>
<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
<!--end Typekit-->
<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script>
</head>


<!-- Start the Markup
================================================== -->
<body <?php body_class(); ?> id="body" >


<?php if (get_option_tree('top_hat') == 'Yes') { ?>	
	<?php get_template_part( 'element', 'tophat' ); ?>
<?php } ?>
	
<!-- Super Container for entire site -->
<div id="top"></div>
<div class="super-container full-width" id="section-greatestwrapperalive">

	<!-- 960 Container -->
	<div class="container">
		<section class="top-level">
			<div class="top-contact">
				<a class="contact-button" href="http://www.builtinpgh.com/contact">Contact</a>
			</div>
			<div class="social-media">
				<a href="http://eepurl.com/sndqL" title="Sign up for the Built in PGH Mailing List" class="mail" target="_blank"></a>
				<a href="http://www.twitter.com/builtinpgh" title="Follow us on Twitter!" class="twitter" target="_blank"></a>
                <a href="webcal://builtinpgh.com/?plugin=all-in-one-event-calendar&controller=ai1ec_exporter_controller&action=export_events&cb=1488395415" title="Subscribe to the Built in Pittsburgh events calendar using any popular calendar program (iCal, Outlook, etc.)" class="calendar" target="_blank"></a>
			</div>
		</section><!--end top-level-->
		
		<?php if (ot_get_option('sidebar_placement') == 'Left') { ?>	
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
					
					<!-- Navigation -->
					<?php get_template_part( 'element', 'navigation' ); ?>
					<!-- /Navigation -->
					
					<br class="clearfix"/>
					<!-- Sub-Menu Widgets -->
					<?php dynamic_sidebar( 'default-widget-area' ); ?>		
					<!-- /Sub-Menu Widgets -->
					
			</nav>
			
		</div>
		<!-- /End Header -->
		<?php } ?>


<!-- ============================================== -->

		
		<!-- Begin Main Content Columns! -->
		<div class="twelve columns alpha" id="section-content"> 