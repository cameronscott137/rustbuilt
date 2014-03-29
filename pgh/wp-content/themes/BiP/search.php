<?php
/**
 * Search results page
 * 
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts()
 *
 * @package 	WordPress
 * @subpackage 	Starkers
 * @since 		Starkers 4.0
 */
?>
<?php get_header();?>

 <div class="container main">

      <div class="row">

        <section class="col-sm-8" id="content">
        	<h3 class="search-title">Search Results for '<?php echo get_search_query(); ?>'</h3>	
    			<?php if ( have_posts() ): ?>
    					<?php while ( have_posts() ) : the_post(); ?>
    						<?php get_template_part( 'content', get_post_format() ); ?>
    					<?php endwhile; ?>
    				<?php else: ?>
    				<h2>No posts to display</h2>
    			<?php endif; ?>
        </section><!--/col-sm-6-->
      <aside class="sidebar col-md-4">
          <?php if ( function_exists('liked') || dynamic_sidebar('liked') ) : ?>
          <?php endif; ?>
          <?php if ( function_exists('comments') || dynamic_sidebar('comments') ) : ?>
          <?php endif; ?>
      </aside>
      </div><!--/row-->
    </div><!--/.container-->

<?php get_footer();?>