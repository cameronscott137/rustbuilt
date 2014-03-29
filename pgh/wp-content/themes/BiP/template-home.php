<?php
/*
Template Name: Home
*/
?>

<?php get_header();
?>

	<div class="container">
		<div class="col-sm-12">
				<section class="calendar content" id="calendar">
							<h1 class="section-title">Calendar</h2>
							<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>
								<?php the_content(); ?>
							<?php endwhile; ?>
							<div class="calendar-widget">
								<?php if (!dynamic_sidebar('calendar') ) : ?>
								<?php endif; ?>
							</div>
				</section><!-- calendar -->


				<section class="jobs content" id="jobs">
								<div class="entries">
									<h1 class="section-title">Jobs</h2>
										<div class="row">
											<?php if ( have_posts() ): ?>
												<?php $args = array( 'post_type' => 'jobs', 'posts_per_page' => 20 );
												$featured = new WP_Query($args); ?>
													<?php while ($featured->have_posts()) : $featured->the_post();
													global $rb_jobs;
													$job = get_post_meta(get_the_ID(), $rb_jobs->get_the_id(), TRUE);?>

														<article class="entry col-md-4">
																<?php the_post_thumbnail('rustbuilt');?>
																<h2 class="job-title" itemprop="headline"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
																<h3>at <?php echo $job['company-name'];?></h3>
																<h4 class="post-meta"><?php the_terms( $post->ID, 'field', '', '', '', ''  )?> | Posted <?php the_time('n/d/y') ?>  
																<?php if(is_user_logged_in() ) {
																echo "| ";
																edit_post_link('Edit Post');
																}?> </h4>
																<?php the_excerpt();?>
														</article>
														<?php
														    $counter++;
														    if ($counter % 3 == 0) {
														    echo '</div><div class="row">';
														    }
														?>
													<?php endwhile; ?>
												<?php else: ?>
												<h2>No posts to display</h2>
												<?php endif; ?>
										</div><!-- /row -->
								</div><!-- /entries -->
				</section><!-- calendar -->

				<section class="blog content" id="speak-freely">
							<div class="entries">
								<h1 class="section-title">Speak Freely</h2>
									<?php if ( have_posts() ): ?>
											<?php $my_query = new WP_Query( array(
												'posts_per_page' => '6'
													)
												); ?>
											<div class="row">
												<?php while ($my_query->have_posts()) : $my_query->the_post(); ?>
													<article class="entry col-md-4">
															<?php the_post_thumbnail('rustbuilt');?>
															<h2 class="blog-title" itemprop="headline"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
															<h4 class="post-meta"><?php the_category(' '); ?> | By <span class="entry-author" itemprop="author"><?php the_author_posts_link(); ?></h4>
															<?php the_excerpt(); ?>
															<aside id="share">
																<p>Share: <a target="_blank" href="https://twitter.com/share?url=<?php esc_url( the_permalink() );?>"><i class="fa fa-twitter"></i></a> <a target="_blank" href="http://www.facebook.com/sharer/sharer.php?u=<?php esc_url( the_permalink() );?>"><i class="fa fa-facebook"></i></a> <a target="_blank" href="http://www.linkedin.com/shareArticle?url=<?php esc_url( the_permalink() );?>"><i class="fa fa-linkedin"></i></a> <a target="_blank" href="https://plus.google.com/share?url=<?php esc_url( the_permalink() );?>"><i class="fa fa-google-plus"></i></a>
															</aside>
													</article>
													<?php
													    $counter++;
													    if ($counter % 3 == 2) {
													    echo '</div><div class="row">';
													    }
													?>
												<?php endwhile; ?>
											</div>
									<?php else: ?>
										<h2>No posts to display</h2>
									<?php endif; ?>
							</div><!-- entries -->
				</section><!-- calendar -->



				<section class="submit content" id="submit">
								<h1 class="section-title">Submit</h2>
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
				</section><!-- calendar -->



		</div><!-- col-md-9 -->
	</div><!-- container -->
</main>

 <?php get_footer(); ?>