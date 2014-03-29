<?php
/**
 * The Template for displaying all single posts
 *
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts()
 *
 * @package 	WordPress
 * @subpackage 	Starkers
 * @since 		Starkers 4.0
 */
?>
<?php get_header();
global $rb_jobs;
$job = get_post_meta(get_the_ID(), $rb_jobs->get_the_id(), TRUE);
?>

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

 <div class="container main jobs">
    	<div class="row">
			<div class="col-sm-12">
			<article class="post post-<?php the_ID(); ?>">
				<h2 itemprop='headline' class="blog-title"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h2>
				<div class="jobs-meta">
					<div class="jobs-date">
						<div class="jobs-label">
							Date Posted:
						</div>
						<div class="jobs-desc"><?php the_time('M j, Y');?></div>
					</div>
					<div class="jobs-company">
						<div class="jobs-label">
							Company:
						</div>
						<div class="jobs-desc"><?php echo "<a href='".$job['company-url']."'target='_blank'>".$job['company-name']."</a>";?></div>
					</div>
					<div class="jobs-category">
						<div class="jobs-label">
							Category:
						</div>
					<div class="jobs-desc"><?php the_terms( $post->ID, 'field', '', ', ', ' ' ); ?></div>
				</div>
			</div>
				<?php the_post_thumbnail();?>
				<div class="post-content">
					<?php echo $job['description'];?>
				</div>
				<div class="jobs-apply pull-right">
							<?php echo "<a class='btn btn-primary apply' href='".$job['contact-url']."'target='_blank'>Apply here</a>";?>
				</div>
			<div id="share" style="clear: both;">
	            <p>Share: <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a>
	        </div>

</article>
</div>

		</div><!-- /row -->
</div>


<?php endwhile; ?>

<?php get_footer();?>

