
<!-- THIS FILE LOADS ALL THE CUSTOMIZATIONS FROM THE THEME OPTIONS PANEL  -->
<!-- Load the font stack from the Options Panel -->
    <?php if (get_option_tree('default_fontstack') == 'Serif') { ?>
    <link rel="stylesheet" href="<?php echo WP_THEME_URL; ?>/assets/stylesheets/typography-serif.css" />
    <?php } else { ?>
    <link rel="stylesheet" href="<?php echo WP_THEME_URL; ?>/assets/stylesheets/typography-sans.css" />
    <?php } ?>
    
    <!-- Load the default skin from the Options Panel -->
    <?php $lightdark = '-lightbg';
     
    if (get_option_tree('default_skin') == 'Dark') { ?>
		<link rel="stylesheet" href="<?php echo WP_THEME_URL; ?>/assets/stylesheets/skin-dark.css" />
		<?php $lightdark = '-darkbg'; ?>
	<?php } else if (get_option_tree('default_skin') == 'Clean') { ?>
		<link rel="stylesheet" href="<?php echo WP_THEME_URL; ?>/assets/stylesheets/skin-clean.css" />
		
	<?php } else {} ?>

	<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo('stylesheet_directory'); ?>/style.css" />

<!-- Custom CSS Modifications from the Admin Panel -->
<style type="text/css">

/* Insert the rest of the custom CSS from the admin panel */ 
<?php echo get_option_tree('customcss'); ?> 
	 
	 
	/* Add a custom bg if it exists */
	<?php $homepage_bg = get_option_tree("default_bg");
			
	if(get_custom_field('custom_background_image')) { ?>
		body, body:after {background: url('<?php echo get_custom_field('custom_background_image',true); ?>') top left fixed repeat;}
		h2.title span, ul.tabs li a.active {background: none;}
	<?php } elseif (isset($homepage_bg[0])) { ?>
	 	body, body:after {background: url('<?php echo get_option_tree("default_bg"); ?>') top left fixed repeat;}
	 	h2.title span, ul.tabs li a.active {background: none;}
	<?php } else {} ?>
	 
	<?php global $theme_options; ?>
	 
	
	body, #section-tophat,
	#section-footer,
	#section-sub-footer{
		background-repeat: repeat;
	 	background-position: top center;
	 	background-attachment: fixed;
	}
	
	/* CUSTOM BG INSERTER FOR TOPHAT, FOOTER, SUBFOOTER */
	<?php $tophat_bg = get_option_tree("tophat_background_image");
		  $tophat_color = get_option_tree("tophat_background_color");
		  $subfooter_bg = get_option_tree("subfooter_background_image");
		  $subfooter_color = get_option_tree("subfooter_background_color");
	?>
	
	<?php if (isset($tophat_color[0])) { ?>
	 		#section-tophat {
	 			background-image: url('');
	 			background-color: <?php echo get_option_tree("tophat_background_color"); ?>;
 			}
	<?php } ?>
	<?php if (isset($tophat_bg[0])) { ?>
	 		#section-tophat {
	 			background-image: url('<?php echo get_option_tree("tophat_background_image"); ?>');
 			}
	<?php } ?>
		
	<?php if (isset($subfooter_color[0])) { ?>
	 		#section-sub-footer {
	 			background-image: url('');
	 			background-color: <?php echo get_option_tree("subfooter_background_color"); ?>;
 			}
	<?php } ?>
	<?php if (isset($subfooter_bg[0])) { ?>
	 		#section-sub-footer {
	 			background-image: url('<?php echo get_option_tree("subfooter_background_image"); ?>');
 			}
	<?php } ?>
	
	
	 
	/* This is your link hover color */
	<?php $link_hover_color = get_option_tree("link_hover_color"); if (isset($link_hover_color[0])) { ?>		
		#section-header li a:hover, a:hover {color: <?php echo get_option_tree('link_hover_color');?>;}
	<?php } else {} ?>	
	
	/* This is your link color */
	<?php $link_color = get_option_tree("link_color"); if (isset($link_color[0])) { ?>		
		#section-header li a, a {color: <?php echo get_option_tree('link_color'); ?>;}
		.sf-menu > li:hover, .sidebar .current-menu-item{box-shadow: 2px 0px 0px <?php echo get_option_tree('link_color'); ?>;}
		.sidebar .current-menu-item:after {
			content: "";
			background: none repeat scroll 0 0 transparent;
			border-color: transparent transparent transparent <?php echo get_option_tree('link_color'); ?>;
			border-style: solid;
			border-width: 0px; 
			content: "";
			float: right;
			height: 0;
			left: 100%;
			position: absolute;
			top: 36%;
			width: 0;
		}
	<?php } else {} ?>
	
	/* This is your visited link color */
	<?php $link_visited_color = get_option_tree("link_visited_color"); if (isset($link_visited_color[0])) { ?>
		a:visited {color: <?php echo get_option_tree('link_visited_color'); ?>;}
	<?php } else {} ?>		
	
	
</style>


<!-- ALTERNATIVE HEADLINE FONT OVERRIDE - For TypeKit Insertion -->	
<?php $altfont = get_option_tree("alt_fontreplace"); if (isset($altfont[0])) { 	
	echo get_option_tree("alt_fontreplace");
	} else {} ?>
<!-- // END HEADLINE FONT OVERRIDE -->	


<!-- Hide the top bar / optional -->
<?php if (get_option_tree('top_hat') == 'No') { ?>	
	<style type="text/css">
	#section-tophat{display: none; height: 0px !important; margin: 0; padding: 0;}
	</style>
<?php } ?> 


<!-- Hide the top bar / optional -->
<?php if (ot_get_option('sidebar_placement') == 'Right') { ?>	
<!--[if IE]>
<style type="text/css">
 #section-sidebar{position: relative !important;}
</style>
<![endif]-->

	<style type="text/css">
	#section-content{float: left !important;}
	#section-sidebar{float: right !important;}
	@media screen and (-webkit-min-device-pixel-ratio:0) {
	     #section-sidebar{position: relative !important;}
	}
	
	nav{position: fixed !important; width: 220px;}
	
	.sf-menu > li:hover, .current-menu-item{box-shadow: -2px 0px 0px <?php echo get_option_tree('link_color'); ?>;}
	.sf-menu li a{text-align: right;}
	.sf-menu li li a{text-align: left;}
	.sidebar .current-menu-item{box-shadow: -2px 0px 0px <?php echo get_option_tree('link_color'); ?>;}
	.sf-menu li:hover ul,
	.sf-menu li.sfHover ul {
		left:			-120px; 
	}

	.sf-menu li:hover a, .sf-menu li:last-child:hover a{padding-right: 15px;}
	.sf-menu .current-menu-item:after {
			content: "";
			background: none repeat scroll 0 0 transparent;
			border-color: transparent <?php echo get_option_tree('link_color'); ?> transparent transparent;
			border-style: solid;
			border-width: 5px;
			content: "";
			float: right;
			height: 0;
			left: -5%;
			position: absolute;
			top: 36%;
			width: 0;
		}
		
	.external li a:hover{
	background: url("assets/images/theme/external_link.png") no-repeat left center transparent;
	} 
	
	h1#logo{padding-right: 0px; padding-left: 10px;}
	#section-sidebar .widget{text-align: right;}
	.sidebar .widget div {
    padding: 0 0 0 25px;
}
	#section-sidebar{position: fixed; border-left: 1px rgba(255, 255, 255, 0.8); border-right: 0px; height: 100%; box-shadow: -1px 0 0 rgba(0, 0, 0, 0.1);}
			
	</style>
<?php } else { ?>
	<style type="text/css">
	#section-content{float: right;}
	</style>
<?php } ?>  

<!-- Check for Force-Hiding of the Widgets Row -->
<?php if(get_custom_field('widgets_hide') == 'Yes') : ?>

	<style type="text/css">
		#footer{display: none !important;}
		#footer.content_block{display: none;}
	</style>
 
<?php endif; ?>

<!-- HOME Check for Force-Hiding of the Widgets Row -->
<?php if(get_option_tree('widgets_scrolling') == 'No') : ?>

	<style type="text/css">
		.home #footer{display: none;} 
	</style>

<?php endif; ?>

<?php if(get_option_tree('module_padding')) : ?>

<style type="text/css">
	#section-content .content_block{margin-bottom: <?php echo get_option_tree('module_padding'); ?>;}
</style>

<?php endif; ?>


 
<!-- Check for the blog breakout section -->
<?php if(get_option_tree('homepage_breakout_section') == 'Yes') { ?>

<style type="text/css">
	#breakout-row{display: inherit;}
</style>

<?php } else { ?>
	
<style type="text/css">
	#breakout-row{display: none;}
</style>

<?php } ?>


<!-- HOME for Force-Hiding of the Breakout Row -->
<?php if(get_option_tree('blog_scrolling') == 'No') : ?>

	<style type="text/css">
		.home #breakout-row{display: none;}
	</style>

<?php endif; ?>


<!-- Check for Force-Hiding of the Breakout Row -->
<?php if(get_custom_field('breakout_hide') == 'Yes') : ?>

<style type="text/css">
	#breakout-row{display: none !important;}
	.home #breakout-row{display: inherit !important;}
</style>

<?php endif; ?>
