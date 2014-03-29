<?php
/* 
* Template Name: Jobs
*/
?>
<?php get_header(); ?>

<!-- Call global metaboxes -->
<?php
    global $press;
?>

<div class="container page">
    <div class="row">
        <div class="col-md-8">
            <?php if ( have_posts() ): ?>
                <ul class="entry-content">
                    <?php while ( have_posts() ) : the_post(); ?>
                            <li class="entry">
                                <article>
                                    <div class="entry-meta">
                                        <h3 class="blog-title" itemprop="headline"><a href="<?php the_content(); ?>" title="Permalink to <?php the_title(); ?>" rel="bookmark"><?php the_title(); ?></a></h3>
                                        <h4 class="post-meta">Posted in: <?php the_category(' '); ?> | <time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate itemprop="datePublished"><?php echo get_the_date(); ?></time> | <?php comments_popup_link('Leave a Comment', '1 Comment', '% Comments'); ?> | <?php edit_post_link('Edit Post');?></h4>

                                        
                                    </div>
                                </article>
                            </li>
                    <?php endwhile; ?>
                </ul>
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