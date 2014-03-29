<?php 
// Add new post type for work
add_action('init', 'bip_child_resources_init');
function bip_child_resources_init()
{
	$resource_labels = array(
		'name' => _x('Resources', 'post type general name'),
		'singular_name' => _x('Resource','post type singular name'),
		'all_items' => __('All resources'),
		'add_new' => _x('Add new resource', 'Work'),
		'add_new_item' => __('Add new resource'),
		'edit_item' => __('Edit resource'),
		'new_item' => __('New resource'),
		'view_item' => __('View resource'),
		'search_items' => __('Search in resources'),
		'not_found' => __('No resources found'),
		'not_found_in_trash' => __('No resources found in trash'),
		'parent_item_colon' => ''
		);

	$args = array(
		'labels' => $resource_labels,
		'public' => true,
		'public_queryable' => true,
		'show_ui' => true,
		'query_var' => true,
		'rewrite' => true,
		'capability_type' => 'post',
		'hierarchical' => false,
		'taxonomies' => array('category','post_tag'),
		'menu_position' => 5,
		'supports' => array('title','editor', 'author', 'thumbnail', 'excerpt','comments','revisions', 'custom-fields'),
		'has_archive' => 'resources-archive'
	);
	register_post_type('resources',$args);
}

add_action('init', 'bip_child_companies_init');
function bip_child_companies_init()
{
	$company_labels = array(
		'name' => _x('Companies', 'post type general name'),
		'singular_name' => _x('Company','post type singular name'),
		'all_items' => __('All company'),
		'add_new' => _x('Add new company', 'Work'),
		'add_new_item' => __('Add new company'),
		'edit_item' => __('Edit company'),
		'new_item' => __('New company'),
		'menu_icon' => get_bloginfo('template_directory') . '/images/resources_icon.gif',  // Icon Path
		'view_item' => __('View company'),
		'search_items' => __('Search in company'),
		'not_found' => __('No company found'),
		'not_found_in_trash' => __('No company found in trash'),
		'parent_item_colon' => ''
		);

	$args = array(
		'labels' => $company_labels,
		'public' => true,
		'public_queryable' => true,
		'show_ui' => true,
		'query_var' => true,
		'rewrite' => true,
		'capability_type' => 'post',
		'hierarchical' => false,
		'taxonomies' => array('category','post_tag'),
		'menu_position' => 5,
		'supports' => array('title','editor', 'author', 'thumbnail', 'excerpt','comments','revisions', 'custom-fields'),
		'has_archive' => 'companies'
	);
	register_post_type('companies',$args);
}

// Add new Custom Post Type icons
add_action( 'admin_head', 'cooking_icons' );
function cooking_icons() {
?>
	<style type="text/css" media="screen">
		#menu-posts-resources .wp-menu-image {
			background: url(<?php bloginfo('url') ?>/wp-content/themes/images/resources_icon.png) no-repeat 6px !important;
		}
		.icon32-posts-resources {
			background: url(<?php bloginfo('url') ?>/wp-content/themes/images/resources_icon2x.png) no-repeat !important;
		}
		#menu-posts-companies .wp-menu-image {
			background: url(<?php bloginfo('url') ?>/wp-content/themes/images/companies_icon.png) no-repeat 6px !important;
		}
		.icon32-posts-companies {
			background: url(<?php bloginfo('url') ?>/wp-content/themes/images/companies_icon2x.png) no-repeat !important;
		}

    </style>
<?php } 

// Add custom taxonomies
add_action( 'init', 'bip_child_create_taxonomies', 0 );

function bip_child_create_taxonomies() 
{	// Market
	$market_labels = array(
		'name' => _x( 'Markets', 'taxonomy general name' ),
		'singular_name' => _x( 'Market', 'taxonomy singular name' ),
		'search_items' =>  __( 'Search in markets' ),
		'all_items' => __( 'All markets' ),
		'most_used_items' => null,
		'parent_item' => null,
		'parent_item_colon' => null,
		'edit_item' => __( 'Edit market' ), 
		'update_item' => __( 'Update market' ),
		'add_new_item' => __( 'Add new market' ),
		'new_item_name' => __( 'New market' ),
		'menu_name' => __( 'Markets' ),
	);
	register_taxonomy('market', array('resources','companies') ,array(
		'hierarchical' => false,
		'labels' => $market_labels,
		'show_ui' => true,
		'query_var' => true,
		'rewrite' => array('slug' => 'vertical-markets' )
	));
}
?>