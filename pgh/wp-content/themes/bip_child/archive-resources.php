<?php
/**
 * The template for displaying Archive pages.
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 *
 * Please see /external/starkers-utilities.php for info on Starkers_Utilities::get_template_parts() 
 *
 * @package 	WordPress
 * @subpackage 	Starkers
 * @since 		Starkers 4.0
 */
?>
<?php get_header() ?>

<?php if ( function_exists('yoast_breadcrumb') ) {
	yoast_breadcrumb('<p id="breadcrumbs">','</p>');
} ?>

<h1>Resources</h1>
   <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("resources") ) : ?> 
   <?php endif; ?>
<div>
<?php
//for each category, show all posts
$cat_args=array(
  'type' => 'post',
  'orderby' => 'name',
  'exclude' => 1,
  'order' => 'ASC',
  'hide_empty' => 0,
  );
$categories=get_categories($cat_args);
  foreach($categories as $category) {
    $args=array(
      'posts_per_page' => -1,
      'category__in' => array($category->term_id),
      'caller_get_posts'=>1,
      'post_type'=>'any',
      'orderby' => 'slug',
      'order'=>'ASC'

    );
    $posts=get_posts($args);
      if ($posts) {
        echo '<div class="category-index"><h2><a href="' . get_category_link( $category->term_id ) . '" title="' . sprintf( __( "View all posts in %s" ), $category->name ) . '" ' . '>' . $category->name.'</a> </h2> <?php echo category_description(3); ?><ul> ';
        echo '<p>' . $category->description . '</p>';
        foreach($posts as $post) {
          setup_postdata($post); ?>
          <li class="span3">
            <?php echo '<a href="' . get_category_link( $category->term_id ) . '#' . basename(get_permalink()) . '">' . get_the_title() . '</a></li>' ;?>
          <?php }?> </ul> </div><!-- foreach($posts -->
      <?} // if ($posts
    } // foreach($categories
?>
</div>
<?php get_footer() ?>