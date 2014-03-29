<?php
/*
Template Name: our_manifesto
*/
?>

<?php get_header(); ?>
			
			<div id="content">
				<!-- AddThis Button BEGIN -->
				<div class="social_components wrap clearfix">
					<div class="addthis_toolbox addthis_default_style ">
						<a class="addthis_button_tweet" addthis:url="http://rustbuilt.org/" addthis:title="WE ARE RUSTBUILT" ></a>
  				                <a class="addthis_button_facebook_like" fb:like:layout="button_count" addthis:url="https://www.facebook.com/Rustbuilt" addthis:title="WE ARE RUSTBUILT" ></a>
					</div>
					<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=xa-508fcf2d7cb1e788"></script>
				</div>
				<!-- AddThis Button END -->
				
				<?php	$page_desc = simple_fields_get_post_group_values(get_the_id(), "page_short_desc", $use_name = true, $return_format = 2); ?>
				<div class="wrap clearfix">
					<div class="page_desc">
						<h1><?php echo $page_desc [0]['page_title'];?></h1>
						<h5><?php echo $page_desc [0]['page_tagline'];?></h5>
						<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/rustbuilt_mid_logo.png" />
						<p><?php echo $page_desc [0]['page_desc'];?></p>
					</div>
					<?php	$contents = simple_fields_get_post_group_values(get_the_id(), "manifesto_details", $use_name = true, $return_format = 2); ?>
					<div class="page_content">
						<?php echo $contents [0]['detail_desc'];?>
					</div>
				</div>
    
			</div> <!-- end #content -->

<?php get_footer(); ?>