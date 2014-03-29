<?php
/**
 * The Template for displaying all single event posts
 *
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts()
 *
 * @package 	WordPress
 * @subpackage 	Starkers
 * @since 		Starkers 4.0
 */
?>
<?php get_header();
?>
 <div class="container main">
        <div class="row">
            <div class="col-sm-12">

<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

                <article class="entry-content">
                    <div class="entry-meta">
                        <h3 class="blog-title" itemprop="headline"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h3>
                    </div>
                    	<?php the_post_thumbnail();?>
                        <?php the_content(); ?>
                    <div id="share">
                        <p>Share: <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a>
                    </div>
                </article>
            </div><!-- /col-md-8 -->

</div> <!-- /row -->
</div>
<?php endwhile; ?>

<?php get_footer(); ?>