<?php
/*
Template Name: Medium
*/
?>

<?php get_header();?>

<!-- Call global metaboxes -->
<?php
	global $medium_forms;
	global $case_studies;
	global $title;
	$title = $post->post_name;
?>

<div class="hero inset">
		      <div class="container">
		        <div class="col-md-8">
		          <?php
				          $meta_header_cta = get_post_meta(get_the_ID(), $header_cta->get_the_id(), TRUE);
						  echo "<h1>".$meta_header_cta['header_cta']."</h1>";
	          	  ?>
		        </div><!-- /col-md-6 -->
		        <div class="col-md-4 form">
		          <?php
				          $meta_form = get_post_meta(get_the_ID(), $medium_forms->get_the_id(), TRUE);
						  echo "<h3>".$meta_form['form_name']."</h3>";
						  echo "<p>".$meta_form['form_desc']."</p>";
						  echo $meta_form['form_code'];
	          	  ?>
		        </div><!-- /row -->
      </div><!-- /container -->
    </div><!-- /jumbotron -->
    <div class="container main">
      <div class="row medium-intro">
        <?php the_content(); ?>
      </div><!-- /row -->
      <div class="row medium-images">
	        <div class="col-md-4">
	        	<img class="img-responsive" src="http://placehold.it/400x300&text=Supporting+Diagram"/>
	        </div><!-- /col-md-4 -->
	        <div class="col-md-4">
	        	<img class="img-responsive" src="http://placehold.it/400x300&text=Supporting+Diagram"/>
	        </div><!-- /col-md-4 -->
	        <div class="col-md-4">
	        	<img class="img-responsive" src="http://placehold.it/400x300&text=Supporting+Diagram"/>
	        </div><!-- /col-md-4 -->
      </div><!-- /row -->
     </div><!-- /container -->
     <div class="medium-case">
    <div class="container main">
        <div class="row">
        <div class="col-md-4">
	          <?php
	          $meta = get_post_meta(get_the_ID(), $case_studies->get_the_id(), TRUE);
			  echo "<h2 class='section-title'>".$meta['name1']."</h2>";
			  echo "<p>".$meta['description1']."</p>";
	          ?>
        </div><!-- /col-md-4 -->
        <div class="col-md-4">
	          <?php
	          $meta = get_post_meta(get_the_ID(), $case_studies->get_the_id(), TRUE);
			  echo "<h2 class='section-title'>".$meta['name2']."</h2>";
			  echo "<p>".$meta['description2']."</p>";
	          ?>
        </div><!-- /col-md-4 -->
        <div class="col-md-4">
	          <?php
	          $meta = get_post_meta(get_the_ID(), $case_studies->get_the_id(), TRUE);
			  echo "<h2 class='section-title'>".$meta['name3']."</h2>";
			  echo "<p>".$meta['description3']."</p>";
	          ?>
        </div><!-- /col-md-4 -->
      </div><!-- /row -->
	</div>
</div>
	<div class="loops">
			<div class="container main">
		      <div class="row">
		        <div class="col-md-6 posts">
		          	<h2 class="section-title">Recent Thoughts on <?php echo $title;?></h2>
					<?php if ( have_posts() ): ?>
						<?php $featured = new WP_Query("category_name=$title&showposts=3"); ?>
							<?php while ($featured->have_posts()) : $featured->the_post(); ?>
										<article>
											<?php the_post_thumbnail(); ?>
											<div class="entry-meta">
												<h2 class="blog-title" itemprop="headline"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
												<h4 class="post-meta"><?php the_category(' '); ?>  &#8226;  <time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate itemprop="datePublished"><?php echo get_the_date(); ?></time> &#8226; By <span class="entry-author" itemprop="author"><?php the_author_posts_link(); ?></span></h4>
												<?php the_excerpt(); ?>
											</div>
										</article>
							<?php endwhile; ?>
						<?php else: ?>
						<h2>No posts to display</h2>
						<?php endif; ?>
		        </div><!-- /col-md-6 -->
		        <div class="col-md-6 press">
		         	<h2 class="section-title">Recent Press on <?php echo $title;?></h2>
					<?php if ( have_posts() ):
							//$args = array( 'post_type' => 'ncs_press', 'category_name' => 'mobile', 'posts_per_page' => 10);
							$loop = new WP_Query(array( 'post_type' => 'ncs_press', 'category_name'=>$title, 'posts_per_page' => 5));
							while ( $loop->have_posts() ) : $loop->the_post(); ?>
								<article class="entry-meta">
									<?php the_content(); ?>
									<time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate itemprop="datePublished"><?php the_date(); ?></time>
								</article>
						<?php endwhile;
						else: ?>
						<h2>No posts to display</h2>
						<?php endif; ?>
		        </div><!-- /col-md-6 -->
		      </div><!-- /row -->
		    </div><!-- container -->
		</div><!-- loops -->
<!-- Violator -->
      <div class="violator inset">
            <div class="container main">
                  <div class="col-md-6">
                                    <h2>Summarizing Call-to-Action.</h2>
                                    <p>With a supporting argument. Lorem ipsum dolor sit.</p>
                  </div><!-- /col-md-8 -->
                  <div class="col-md-6">
                        <a href="#" class="btn btn-primary btn-lg">Learn More!</a>
                  </div><!-- /col-md-6 -->
            </div><!-- /container -->
      </div><!-- /violator -->


 <?php get_footer(); ?>