<?php
/**
 * The main template file
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file 
 *
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts()
 *
 * @package     WordPress
 * @subpackage  Starkers
 * @since       Starkers 4.0
 */
?>
<?php get_header(); ?>

<div class="container page">
    <div class="row">
        <div class="col-md-8">
            <h2 class="page-title">Our Thoughts</h2>
            <?php if ( have_posts() ): ?>
                <ul class="entry-content">
                    <?php while ( have_posts() ) : the_post(); ?>
                            <li class="entry entry-post">
                                <article>
                                    <div class="entry-meta">
                                        <h3 class="blog-title" itemprop="headline"><a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h3>
                                        <h4 class="post-meta">Posted in: <?php the_category(' '); ?> | <time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate itemprop="datePublished"><?php echo get_the_date(); ?></time> | <?php comments_popup_link('Leave a Comment', '1 Comment', '% Comments'); ?> | <?php edit_post_link('Edit Post');?></h4>
                                        <div class="featured-image">
                                            <a href="<?php esc_url( the_permalink() ); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_post_thumbnail();?></a>
                                        </div>
                                        <?php the_excerpt(); ?>
                                        <div id="share">
                                            <p>Share: <a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                </article>
                            </li>
                    <?php endwhile; ?>
                </ul>
                <div class="nav-previous pull-left"><?php next_posts_link( '« Older posts' ); ?></div>
                <div class="nav-next pull-right"><?php previous_posts_link( 'Newer posts »' ); ?></div>
            <?php else: ?>
            <h2>No posts to display</h2>
            <?php endif; ?>
    </div><!-- /col-md-8 -->
    <aside class="col-md-4 blog-sidebar">
        <div class="cta widget">
            <h3 class="widget-title">CTA Form</h3>
            <p>[General Act-on Form]</p>
        </div><!-- /end cta -->
        <div class="search widget">
             <h3 class="widget-title">Search posts</h3>
                <?php get_search_form(); ?>
        </div><!-- /end cta -->
        <div class="categories widget">
            <h3 class="widget-title">Search posts by medium</h3>
            <!--<?php wp_list_categories('title_li=');?> -->
                <form action="<?php bloginfo('url'); ?>/" method="get">
                        <div>
                            <?php
                            $select = wp_dropdown_categories('show_option_none=Select category&show_count=1&orderby=name&echo=0');
                            $select = preg_replace("#<select([^>]*)>#", "<select$1 onchange='return this.form.submit()'>", $select);
                            echo $select;
                            ?>
                            <noscript><div><input type="submit" value="View" /></div></noscript>
                        </div>
                </form>
        </div><!-- /end categories -->
    </aside><!-- /col-md-4 -->
</div> <!-- /row -->
</div> <!-- /container -->

<?php get_footer(); ?>