<?php
/*
	Template Name: Scrolling Home
*/

get_header(); ?>


<?php 
  header( "refresh:5;url=http://www.builtinpgh.com" );
?>
				
<!-- Blog -->
	<div class="content_block slide_block">

		<?php if(get_post_meta($pagg->ID,'page_caption')) : ?>
			<div id="page-header">
				<span class="supertagline" style="margin: 8px 0 20px;"><?php echo get_post_meta($pagg->ID,'page_caption',true); ?> </span>
				<br class="clear" />
				<hr class="partial-bottom" />
			</div>
		<?php endif; ?>
		
		<?php if(get_post_meta($pagg->ID,'hide_title',true) == 'Yes') : else : ?>
			<h2 class="title"><span>Hey, you're all right!</span></h2>
		<?php endif; ?>

		<div class="content_body">
				<p>Thanks for your submission! Built in Pittsburgh reviews all submissions daily, so you should see it posted here within about 24 hours.</p>
				<p>You'll be redirected back home in about 5 seconds. If not, click <a href="http://www.builtinpgh.com">here</a></p>
			<!-- /POST LOOP -->


		</div>
		
		<br class="clearfix"/>
	</div>

<!-- end blog -->


<?php get_footer(); ?>