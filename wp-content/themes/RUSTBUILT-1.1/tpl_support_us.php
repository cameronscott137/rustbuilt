<?php
/*
Template Name: support_us
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
						<h5 class="support_dtl"><?php echo $page_desc [0]['page_tagline'];?></h5>
					</div>
					<div class="page_content">
						<div class="brown_btn_wrap">
							<div class="brown_btn contact_pg">
								<a href="<?php echo get_permalink( 67 ); ?>">BECOME A SPONSOR</a>
							</div>
							<div class="brown_btn merch">
								<a href="#">PREORDER SOME MERCH</a>
							</div>
						</div>
						<?php	$sponsers_get_head = simple_fields_get_post_group_values(get_the_id(), "sponsors_details_head", $use_name = true, $return_format = 2); ?>
						<?php	$sponsers_get = simple_fields_get_post_group_values(get_the_id(), "sponsors_details", $use_name = true, $return_format = 2); ?>
						
						<div class="sponsers_details">
							<h4><?php echo $sponsers_get_head [0]['heading'];?></h4>
							<ul class="clearfix">
								<?php $count=0; foreach ($sponsers_get as $sponsers){?>
									<li class="sponsor_link <?php if(++$count%5 == 0){ echo "right"; }?>">
										<a href="<?php echo $sponsers ['sponsor_link'];?>" >
											<img src="<?php echo wp_get_attachment_url($sponsers ['sponsor_logo']);?>" />
											<?php if($sponsers ['twitter_id'] != '') echo "<p>".$sponsers ['twitter_id']."</p>";?>
										</a>
									</li>
									<?php if($count%5 == 0):?> 
									<li style="clear: both"></li>
									<?php endif; ?>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
			</div> <!-- end #content -->

<?php get_footer(); ?>