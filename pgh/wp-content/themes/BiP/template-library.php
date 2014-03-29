<?php
/*
Template Name: Library
*/
?>

<?php get_header();?>
    <div class="container main">
      <div class="row">
      	<h1>Library</h1>
      		<?php $i = 0 ?>
			<?php $args = array( 'post_type' => 'ncs_insights', 'posts_per_page' => 10 );
			$loop = new WP_Query( $args ); ?>
			<?php if(have_posts()) : while ($loop->have_posts() ) : $loop->the_post(); ?>
					<?php $i++ ?>
					<?php if ( $i % 3 == 1 ) : 
						echo "</div>";
						echo "<div class='row'>";
					endif; ?>
					<article class="entry-meta col-md-4">
							<h2 class="blog-title" itemprop="headline"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
							<h4 class="post-meta"><?php the_category(' '); ?>  &#8226;  <time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate itemprop="datePublished"><?php echo get_the_date(); ?></time> &#8226; By <span class="entry-author" itemprop="author"><?php the_author_posts_link(); ?></span></h4>
						<?php the_content(); ?>
					</article>
				<?php endwhile;
				else: ?>
				<h2>No posts to display</h2>
				<?php endif; ?>
      </div><!-- /row -->
    </div><!-- /container -->

 <?php get_footer(); ?>