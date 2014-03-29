<?php
/*
Template Name: Categories
*/
?>

<?php get_header() ?>

<h1>Resources</h1>
<p class="archive-desc">This is a listing of resources in the Pittsburgh Innovation Ecosystem. This is an organic and growing list. Is your business or category missing? <a href="http://www.builtinpgh.com/submit-resource" target="_blank">We need to hear from you.</a></p>

<div>
<?php
//for each category, show all posts
$cat_args=array(
  'type' => 'post',
  'orderby' => 'name',
  'exclude' => 3,
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