<?php 
/** Register the Project Custom Post Type
==========================================**/
	add_action('init', 'bip_init');
        function bip_init() {
            /* Insights */
            $jobs_labels = array(
                'name' => _x('Jobs', 'post type general name'),
                'singular_name' => _x('Job','post type singular name'),
                'all_items' => __('All jobs'),
                'add_new' => _x('Add new job', 'Work'),
                'add_new_item' => __('Add new job'),
                'edit_item' => __('Edit job'),
                'new_item' => __('New job'),
                'view_item' => __('View job'),
                'search_items' => __('Search in jobs'),
                'not_found' => __('No jobs found'),
                'not_found_in_trash' => __('No jobs found in trash'),
                'parent_item_colon' => ''
            );

            $args = array(
                'labels' => $jobs_labels,
                'public' => true,
                'public_queryable' => true,
                'show_ui' => true,
                'query_var' => true,
                'rewrite' => true,
                'capability_type' => 'post',
                'hierarchical' => false,
 //               'taxonomies' => array('category'),
                'menu_position' => 5,
                'supports' => array('title', 'thumbnail','editor'),
                'has_archive' => 'jobs'
            );

            register_post_type('jobs',$args);

        }

/*Add new Custom Post Type icons
add_action( 'admin_head', 'bip_project_icon' );
function bip_project_icon() {
?>
    <style type="text/css" media="screen">
        #menu-posts-fb_projects .wp-menu-image {
            background: url(<?php bloginfo('url') ?>/wp-content/themes/images/resources_icon.png) no-repeat 6px !important;
        }
        .icon32-posts-fb_projects {
            background: url(<?php bloginfo('url') ?>/wp-content/themes/images/resources_icon2x.png) no-repeat !important;
        }
    </style>
<?php } */  

// Add custom taxonomies
add_action( 'init', 'bip_create_taxonomies', 0 );
function bip_create_taxonomies() 
{   // Market
    $field_labels = array(
        'name' => _x( 'Field', 'taxonomy general name' ),
        'singular_name' => _x( 'Field', 'taxonomy singular name' ),
        'search_items' =>  __( 'Search in fields' ),
        'all_items' => __( 'All fields' ),
        'most_used_items' => null,
        'parent_item' => null,
        'parent_item_colon' => null,
        'edit_item' => __( 'Edit field' ), 
        'update_item' => __( 'Update field' ),
        'add_new_item' => __( 'Add new field' ),
        'new_item_name' => __( 'New field' ),
        'menu_name' => __( 'Fields' ),
    );
    register_taxonomy('field', array('jobs') ,array(
        'hierarchical' => true,
        'labels' => $field_labels,
        'show_ui' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'field' )
    ));
}

?>