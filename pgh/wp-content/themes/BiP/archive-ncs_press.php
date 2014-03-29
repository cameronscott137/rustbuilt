<?php get_header(); ?>
<!-- Call global metaboxes -->
<?php
    global $press;
?>
<div class="container page">
    <div class="row">
        <div class="col-md-8">
            <h2 class="page-title">Recent Press</h2>
            <?php if ( have_posts() ): ?>
                <ul class="press entry-content">
                    <?php while ( have_posts() ) : the_post(); ?>
                            <li class="press-entry">
                                <article>
                                    <div class="entry-meta">
                                        <?php $press_URL = get_post_meta(get_the_ID(), $press->get_the_id(), TRUE);
                                            echo "<h3 class='blog-title' itemprop='headline'>";
                                            echo "<a href='".$press_URL['press-url']."' target='_blank'>";
                                            echo the_title();
                                            echo "</h3></a>"
                                        ?>
                                        <h4 class="post-meta">Posted in: <?php the_category(', '); ?> | Published on <time datetime="<?php the_time( 'Y-m-d' ); ?>" pubdate itemprop="datePublished"><?php echo get_the_date(); ?></time> | <?php edit_post_link('Edit Post');?></h4>
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
    </aside><!-- /col-md-4 -->
</div> <!-- /row -->
</div> <!-- /container -->

<?php get_footer(); ?>