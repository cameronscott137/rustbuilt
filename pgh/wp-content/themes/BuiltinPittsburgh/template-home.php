<?php
/*
Template Name: Home
*/
?>

<?php get_header() ?>

<h1 id="site-description"><span><?php bloginfo( 'description' ); ?></span></h1>
<!-- Mailchimp -->

<!-- Calendar -->
	<div class="content-block-first" id="calendar">
		<h1 class="block-title">Calendar</h1>
			<div class="calendar-widget">
				<?php if (!dynamic_sidebar('calendar') ) : ?>
				<?php endif; ?>
			</div>
			<div class="full-calendar">
				<!-- THE POST LOOP -->
				<?php while ( have_posts() ) : the_post(); ?>	
				<!-- FEATURED IMAGE (optional) -->
					<?php the_content(); ?>		
				<?php endwhile; ?>
			</div>

	</div>
<!-- Companies -->
<div class="content-block" id="companies">
		<h1 class="block-title">Companies</h1>
				<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("companies") ) : ?>
				<?php endif; ?>

				<?php $args = array( 'post_type' => 'companies', 'posts_per_page' => 6 );?>
				<?php $loop = new WP_Query( $args );
				while ( $loop->have_posts() ) : $loop->the_post();

					?>

				<div class='span3 company'>
					<?php if ( has_post_thumbnail() ) {
									echo '<a href="' . get_post_type() . '/#' . basename(get_permalink()) . '">' . get_the_post_thumbnail($page->ID, 'rustbuilt') . '</a></li>';
								} else { ?>
									<a href="<?php echo esc_url( home_url( '/' ) ); ?>corrections" target="_blank"><img class="wp-post-image" src="<?php bloginfo('template_directory'); ?>/images/no-image.jpg" alt="<?php the_title(); ?>" /></a>
					<?php } ?>
					<h2 class="excerpt-title">
						<?php echo '<a href="http://www.builtinpgh.com/companies/#' . basename(get_permalink()) . '">' . get_the_title() . '</a></li>'?></h2>
						<!--<?php echo '<a href="' . get_post_type() . '/#' . basename(get_permalink()) . '">' . get_the_title() . '</a></li>'?></h2>-->
					<div class="resource-contact">
						<?php
							$url = get_post_meta($post->ID, 'rustbuilt_resource_contact', true);
							$twitter = get_post_meta($post->ID, 'rustbuilt_resource_twitter', true);
						?>
						<p>
							<?php if($url != '' ) { ?>
								  <a href="<?php echo $url; ?>" target="_blank">View Website<i class="icon-external-link"></i></a>
							<?php } 
								if($url != '' && $twitter != ''){ ?>
									 &#124;
							<?php }
								if($twitter != '' ) { ?>
								<a href="http://www.twitter.com/#!/<?php echo $twitter?>" target="_blank">@<?php echo $twitter ?></a>
							<? } ?>
						</p>
					</div>
					<div class="excerpt">
						<?php the_excerpt(); ?>
					</div>
								<?php edit_post_link('Edit this post'); ?>
					</div>

					<?php 	endwhile; ?>
		<a class="more button" href="http://www.builtinpgh.com/companies">View All Companies</a>
	</div>


	<div class="content-block" id="speak-freely">
		<h1 class="block-title">Speak Freely</h2>
			
			<?php query_posts('posts_per_page=6'); ?>
		 	<?php while ( have_posts() ) : the_post(); ?>
		 		 	<div class='span3 blog'>
			       <?php the_post_thumbnail('rustbuilt') ?>
			       	<?php if( $wp_query->current_post == 0 && !is_paged() ) {?>
			       		<!--<div class="rsvp"><a href="http://www.builtinpgh.com/speak-freely">Reserve Your Seat Now!</a></div>-->
			       	<?php } ?>
					<h2 class="excerpt-title"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
					<div class="entry-meta">
						<p>Posted <?php the_time('M j, Y') ?> by <?php the_author() ?></p>
					</div> 
					<div class="excerpt">
						<?php the_excerpt(); ?>
					</div>
				<?php edit_post_link('Edit this post'); ?>
				</div>
			<?php endwhile; ?>
		<!--<a class="more button" href="http://www.builtinpgh.com/blog">More Blog Posts</a>-->
	</div>



	<div class="content-block" id="jobs">
		<h1 class="block-title">Jobs</h2>
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("jobs") ) : ?>
			<?php endif; ?>
			<section class="indeed">
			<script type="text/javascript">
					<!--
					indeed_jobroll_title = ' ';
					indeed_jobroll_background_color = "#1c1c1c";
					indeed_jobroll_width = "100%";
					indeed_jobroll_text_font = "14px lucida grande, Helvetica, Sans serif";
					indeed_jobroll_link_color = "#ffcc00";
					indeed_jobroll_border = "transparent";
					//-->
					</script>
					<script type="text/javascript" src="http://www.indeed.com/jobroll?q=startup+tech&l=Pittsburgh%2C+PA&limit=20">
					</script>
					<noscript><a href="http://www.indeed.com/">Jobs</a> by Indeed</noscript>
			</section>
		<a class="more button" href="http://www.indeed.com/jobs?q=startup&l=Pittsburgh%2C+PA" target="_blank">More Job Listings</a>
	</div>
<!-- Submit -->
	<div class="content-block" id="submit">
		<h1 class="block-title">Submit</h1>
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("submit") ) : ?>
				<?php endif; ?>
				<div class="responsive submit">
					<ul class="submit">
			    		<li class="button-grey"><a href="<?php echo esc_url( home_url( '/' ) ); ?>submit-event">Submit an Event</a></li>
			    		<li class="button-grey"><a href="<?php echo esc_url( home_url( '/' ) ); ?>submit-company">Submit a Startup</a></li>
			    		<!-- <li class="button-grey"><a href="<?php echo esc_url( home_url( '/' ) ); ?>submit-resource">Submit a Resource</a></li> -->
			 	 	</ul>
			 	</div>
			<div class="tabbable submit"> <!-- Only required for left/right tabs -->
			  	 <ul class="nav nav-tabs">
			    		<li class="active"><a href="#tab1" data-toggle="tab">Submit an Event</a></li>
			    		<li><a href="#tab2" data-toggle="tab">Submit a Startup</a></li>
			    		<li><a href="#tab3" data-toggle="tab">Submit a Resource</a></li>
			 	 </ul>
			 	 <div class="tab-content">
				    <div class="tab-pane active" id="tab1">
				      	<?php echo do_shortcode("[gravityform id=6 ajax=true name='Submit an Event']")?>
				    </div>
				    <div class="tab-pane" id="tab2">
				     	 <?php echo do_shortcode("[gravityform id=7 ajax=true name='Submit an Company']")?>
				    </div>
				    <div class="tab-pane" id="tab3">
				      	<?php echo do_shortcode("[gravityform id='10' ajax=true name='Submit A Resource']")?>
				    </div>
			  	</div>
			</div>

	</div>

<?php get_footer() ?>