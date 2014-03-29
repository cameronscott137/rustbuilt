<?php
	/**
	 * Starkers functions and definitions
	 *
	 * For more information on hooks, actions, and filters, see http://codex.wordpress.org/Plugin_API.
	 *
 	 * @package 	WordPress
 	 * @subpackage 	Starkers
 	 * @since 		Starkers 4.0
	 */

	/* 
	Required external files
	======================================================================================================================== */

		require_once( 'external/starkers-utilities.php' );
		//require_once( 'custom-posttype.php' );
	/*
	Custom Login and Admin
	======================================================================================================================== 
		function rustbuilt_my_login_logo() { ?>
		    <style type="text/css">
		        body.login div#login{
		        	padding: 40px 0 0;
		        }
		        body.login div#login h1 a {
		            background-image: url(<?php echo get_bloginfo( 'template_directory' ) ?>/images/rustbuilt_login.png);
		            background-size: 250px 56px;
		            padding-bottom: 10px;
		        }
		    </style>
		<?php }

		add_action( 'login_enqueue_scripts', 'rustbuilt_my_login_logo' );

		function rustbuilt_my_login_logo_url() {
			    return get_bloginfo( 'url' );
			}
			add_filter( 'login_headerurl', 'rustbuilt_my_login_logo_url' );

			function rustbuilt_my_login_logo_url_title() {
			    return 'Your Site Name and Info';
			}
			add_filter( 'login_headertitle', 'rustbuilt_my_login_logo_url_title' );

		// Custom WordPress Footer
			function rustbuilt_remove_footer_admin () {
				echo '&copy;' . date( 'Y') . ' Rustbuilt. Powered by Wordpress.';
			}
			add_filter('admin_footer_text', 'rustbuilt_remove_footer_admin');

		add_action('wp_dashboard_setup', 'rustbuilt_dashboard_widgets');
			function rustbuilt_dashboard_widgets() {
				global $wp_meta_boxes;

				// Last comments
				unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_recent_comments']);
				// Incoming links
				unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_incoming_links']);
				// Plugins
				unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_plugins']);
				unset($wp_meta_boxes['dashboard']['normal']['core']['dashboard_quickpress']);
			}

		// Remove Updates/Comments from Admin
			function rustbuilt_admin_bar_edit() {
				global $wp_admin_bar;
				$wp_admin_bar->remove_menu('comments');

			}
			add_action( 'wp_before_admin_bar_render', 'rustbuilt_admin_bar_edit' );

		// Remove Unnnecessary Menu Items

			function remove_menus () {
			   remove_menu_page('edit-comments.php');   //Comments
			   
			}
			add_action('admin_menu', 'remove_menus', 102);

	/*
	Theme-Specific Functions
	======================================================================================================================== */

		/* Add shortcode support in widgets */
		add_filter('widget_text', 'do_shortcode');

		/* Required WP Theme Support */
		add_theme_support( 'automatic-feed-links' );

		/* Add "Post Thumbnails" Support */
		add_theme_support( 'post-thumbnails' );
		set_post_thumbnail_size(200, 150); // default Post Thumbnail dimensions   
		the_post_thumbnail();                  // without parameter -> 'post-thumbnail'
		the_post_thumbnail('thumbnail');       // Thumbnail (default 150px x 150px max)
		the_post_thumbnail('medium');          // Medium resolution (default 300px x 300px max)
		the_post_thumbnail('large');           // Large resolution (default 640px x 640px max)
		the_post_thumbnail('full');            // Full resolution (original size uploaded)
		add_image_size( 'rustbuilt', 840, 560, true ); // 220 pixels wide by 180 pixels tall, hard crop mode

		/* Menus */
			add_theme_support('menu');
			register_nav_menus(array('primary' => 'Primary Navigation'));
			register_nav_menus(array('secondary' => 'Secondary Navigation'));
			register_nav_menus(array('mobile' => 'Mobile'));

		/* Widgets */
		function rustbuilt_widgets_init() {
		    register_sidebar( array(
		        'name' => __( 'Calendar', 'rustbuilt' ),
		        'id' => 'calendar',
				'description' => __( 'Calendar widget that kicks in below 960px', 'rustbuilt' ),
				'before_widget' => '<aside id="third" class="widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
		    ) );

			register_sidebar( array(
				'name' => __( 'Companies', 'rustbuilt' ),
				'id' => 'companies',
				'description' => __( 'The text that appears above the listing of companies', 'rustbuilt' ),
				'before_widget' => '<aside id="first" class="widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );

			register_sidebar( array(
				'name' => __( 'Jobs', 'rustbuilt' ),
				'id' => 'jobs',
				'description' => __( 'The text that appears above the job listings', 'rustbuilt' ),
				'before_widget' => '<aside id="first" class="widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );

			register_sidebar( array(
				'name' => __( 'Submit', 'rustbuilt' ),
				'id' => 'submit',
				'description' => __( 'The text that appears above the submission forms', 'rustbuilt' ),
				'before_widget' => '<aside id="first" class="widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );

			register_sidebar( array(
				'name' => __( 'Resources', 'rustbuilt' ),
				'id' => 'resources',
				'description' => __( 'The text that appears above the resources archive page', 'rustbuilt' ),
				'before_widget' => '<section class="archive-desc">',
				'after_widget' => "</section>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );

			register_sidebar( array(
				'name' => __( 'Footer: About', 'rustbuilt' ),
				'id' => 'footer-1',
				'description' => __( 'This is where your bio goes', 'rustbuilt' ),
				'before_widget' => '<aside id="first" class="widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );

			register_sidebar( array(
				'name' => __( 'Footer: Sponsors', 'rustbuilt' ),
				'id' => 'footer-3',
				'description' => __( 'This is where your sponsor list goes', 'rustbuilt' ),
				'before_widget' => '<aside id="third" class="widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );

		}
		add_action( 'widgets_init', 'rustbuilt_widgets_init' );


	/* Search */
		function rustbuilt_my_search_form( $form ) {

		    $form = '<form role="search" method="get" id="searchform" action="' . home_url( '/' ) . '" >
		    <div>
		    <input type="text" value="' . get_search_query() . '" name="s" id="s" />
		    <input type="submit" id="searchsubmit" class="button" value="'. esc_attr__('Search') .'" />
		    </div>
		    </form>';

		    return $form;
		}

		add_filter( 'get_search_form', 'rustbuilt_my_search_form' );

		// Define what post types to search
		function searchAll( $query ) {
			if ( $query->is_search ) {
				$query->set( 'post_type', array( 'post', 'page', 'companies', 'resources'));
			}
			return $query;
		}

		// The hook needed to search ALL content
		add_filter( 'the_search_query', 'searchAll' );


	/* Excerpts */
		function rustbuilt_new_excerpt_more($more) {
		       global $post;
		       if ($post->post_type == 'post')
					return '... <a class="read-more" href="'. get_permalink($post->ID) . '">Read More »</a>';
			   else
					return '...<a class="read-more" href="' . get_post_type() . '/#' . basename(get_permalink()) . '">Read More »</a></li>';
		}
		add_filter('excerpt_more', 'rustbuilt_new_excerpt_more');

		function rustbuilt_custom_excerpt_length( $length ) {
			return 20;
		}
		add_filter( 'excerpt_length', 'rustbuilt_custom_excerpt_length', 999 );



/* Custom Post Types	
===================================== */

		/* Ensure CPTs show up in Category.php & Tag.php——Fix 'nav_menu_item'*/
			add_filter('pre_get_posts', 'rustbuilt_query_post_type');
			function rustbuilt_query_post_type($query) {
			if ( is_category() || is_tag() && empty( $query->query_vars['suppress_filters'] ) ) {
			    $post_type = get_query_var('post_type');
				if($post_type)
				    $post_type = $post_type;
				else
				    $post_type = array('post','companies','resources', 'nav_menu_item'); // replace cpt to your custom post type
			    $query->set('post_type',$post_type);
				return $query;
			    }
			}

		/* Metaboxes
		   Based on work by Justin Tadlock for Smashing Magazine: http://bit.ly/nuSxC8*/
			// Fire our meta box setup function on the post editor screen
			add_action( 'load-post.php', 'rustbuilt_post_meta_boxes_setup' );
			add_action( 'load-post-new.php', 'rustbuilt_post_meta_boxes_setup' );

			//Meta box setup function 
			function rustbuilt_post_meta_boxes_setup() {
				// Add meta boxes on the 'add_meta_boxes' hook
				add_action( 'add_meta_boxes', 'rustbuilt_add_post_meta_boxes' );
				// Save post meta on the 'save_post' hook
				add_action( 'save_post', 'rustbuilt_save_resource_contact_meta', 10, 2 );
				add_action( 'save_post', 'rustbuilt_save_resource_twitter_meta', 10, 2 );
			}

			/* Create one or more meta boxes to be displayed on the post editor screen. */
			function rustbuilt_add_post_meta_boxes() {

				 $screens = array( 'companies', 'resources' );
    				foreach ($screens as $screen) {
					add_meta_box(
					'rustbuilt-resource-contact',			// Unique ID
					esc_html__( 'Resource Contact', 'example' ),		// Title
					'rustbuilt_resource_contact_meta_box',		// Callback function
					$screen,					// Admin page (or post type)
					'side',					// Context
					'default'					// Priority
					);

					add_meta_box(
					'rustbuilt-resource-twitter',			// Unique ID
					esc_html__( 'Resource Twitter Handle', 'example' ),		// Title
					'rustbuilt_resource_twitter_meta_box',		// Callback function
					$screen,					// Admin page (or post type)
					'side',					// Context
					'default'					// Priority
					);
				}
			}

			/* Display the post meta box. */
			function rustbuilt_resource_contact_meta_box( $object, $box ) { ?>

				<?php wp_nonce_field( basename( __FILE__ ), 'rustbuilt_resource_contact_nonce' ); ?>
				<p>
					<label for="rustbuilt_resource_contact"><?php _e( "Enter an email address (start with http://)", 'example' ); ?></label><br />
						<input type="url" name="rustbuilt_resource_contact" id="rustbuilt_resource_contact" value="<?php echo esc_attr( get_post_meta( $object->ID, 'rustbuilt_resource_contact', true ) ); ?>" size="30" /><br/>
				</p>
				<?php }

			function rustbuilt_resource_twitter_meta_box( $object, $box ) { ?>
				
				<?php wp_nonce_field( basename( __FILE__ ), 'rustbuilt_resource_twitter_nonce' ); ?>
				<p>
					<label for="rustbuilt_resource_twitter"><?php _e( "Twitter Account (no @)", 'example' ); ?></label><br />
					<input type="text" name="rustbuilt_resource_twitter" id="rustbuilt_resource_twitter" value="<?php echo esc_attr( get_post_meta( $object->ID, 'rustbuilt_resource_twitter', true ) ); ?>" size="30" />
				</p>
				<?php }

			/* Save the URL post metadata. */
			function rustbuilt_save_resource_contact_meta( $post_id, $post ) {

				/* Verify the nonce before proceeding. */
				if ( !isset( $_POST['rustbuilt_resource_contact_nonce'] ) || !wp_verify_nonce( $_POST['rustbuilt_resource_contact_nonce'], basename( __FILE__ ) ) )
					return $post_id;

				/* Get the post type object. */
				$post_type = get_post_type_object( $post->post_type );

				/* Check if the current user has permission to edit the post. */
				if ( !current_user_can( $post_type->cap->edit_post, $post_id ) )
					return $post_id;

				/* Get the posted data and sanitize it for use as an HTML class. */
				$new_meta_value = ( isset( $_POST['rustbuilt_resource_contact'] ) ? sanitize_text_field( $_POST['rustbuilt_resource_contact'] ) : '' );

				/* Get the meta key. */
				$meta_key = 'rustbuilt_resource_contact';

				/* Get the meta value of the custom field key. */
				$meta_value = get_post_meta( $post_id, $meta_key, true );

				/* If a new meta value was added and there was no previous value, add it. */
				if ( $new_meta_value && '' == $meta_value )
					add_post_meta( $post_id, $meta_key, $new_meta_value, true );

				/* If the new meta value does not match the old value, update it. */
				elseif ( $new_meta_value && $new_meta_value != $meta_value )
					update_post_meta( $post_id, $meta_key, $new_meta_value );

				/* If there is no new meta value but an old value exists, delete it. */
				elseif ( '' == $new_meta_value && $meta_value )
					delete_post_meta( $post_id, $meta_key, $meta_value );
			}

			/* Save the email post metadata. */
			function rustbuilt_save_resource_twitter_meta( $post_id, $post ) {

				/* Verify the nonce before proceeding. */
				if ( !isset( $_POST['rustbuilt_resource_twitter_nonce'] ) || !wp_verify_nonce( $_POST['rustbuilt_resource_twitter_nonce'], basename( __FILE__ ) ) )
					return $post_id;

				/* Get the post type object. */
				$post_type = get_post_type_object( $post->post_type );

				/* Check if the current user has permission to edit the post. */
				if ( !current_user_can( $post_type->cap->edit_post, $post_id ) )
					return $post_id;

				/* Get the posted data and sanitize it for use as an HTML class. */
				$new_meta_value = ( isset( $_POST['rustbuilt_resource_twitter'] ) ? sanitize_text_field( $_POST['rustbuilt_resource_twitter'] ) : '' );

				/* Get the meta key. */
				$meta_key = 'rustbuilt_resource_twitter';

				/* Get the meta value of the custom field key. */
				$meta_value = get_post_meta( $post_id, $meta_key, true );

				/* If a new meta value was added and there was no previous value, add it. */
				if ( $new_meta_value && '' == $meta_value )
					add_post_meta( $post_id, $meta_key, $new_meta_value, true );

				/* If the new meta value does not match the old value, update it. */
				elseif ( $new_meta_value && $new_meta_value != $meta_value )
					update_post_meta( $post_id, $meta_key, $new_meta_value );

				/* If there is no new meta value but an old value exists, delete it. */
				elseif ( '' == $new_meta_value && $meta_value )
					delete_post_meta( $post_id, $meta_key, $meta_value );
			}



/* Actions and Filters
===================================== */
	add_filter( 'body_class', array( 'Starkers_Utilities', 'add_slug_to_body_class' ) );



/* Require Scripts
===================================== */
	/**
	 * Add scripts via wp_head()
	 *
	 * @return void
	 * @author Keir Whitaker
	 */
	function starkers_script_enqueuer() {

		wp_register_script( 'bootstrap', get_template_directory_uri().'/bootstrap/js/bootstrap.min.js', array( 'jquery' ) );
		wp_enqueue_script( 'bootstrap' );

		wp_register_script( 'fitvid', get_template_directory_uri().'/js/jquery.fitvids.min.js', array( 'jquery' ) );
		wp_enqueue_script( 'fitvid' );

		wp_enqueue_script( 'tinynav', get_template_directory_uri().'/js/tinynav.min.js', array( 'jquery' ), false, true);

		wp_register_script( 'waypoints', get_template_directory_uri().'/js/waypoints.min.js', array( 'jquery' ) );
		wp_enqueue_script( 'waypoints') ;

		wp_register_script( 'scrollto', get_template_directory_uri().'/js/jquery.scrollTo-1.4.3.1-min.js', array( 'jquery' ) );
		wp_enqueue_script( 'scrollto' );

		wp_register_script( 'localscroll', get_template_directory_uri().'/js/jquery.localscroll-1.2.7-min.js', array( 'jquery' ) );
		wp_enqueue_script( 'localscroll' );
	}

	add_action( 'wp_enqueue_scripts', 'starkers_script_enqueuer' );

/* Minification — http://bit.ly/OOdfzk
===================================== */

$jt_use_minified_files = true;
 
add_filter( 'stylesheet_uri', 'child_stylesheet_uri', 10, 2 );
function child_stylesheet_uri($stylesheet_uri, $stylesheet_dir_uri) {
 
	global $jt_use_minified_files;
 
	if ( true == $jt_use_minified_files ) {
		$stylesheet_uri = $stylesheet_dir_uri . '/style.min.css';
	}
 
        // return and append version number to bust cache
	return $stylesheet_uri . '?v=' . filemtime( get_stylesheet_directory() . '/style.css');
}
 
add_action( 'wp_enqueue_scripts', 'child_load_scripts' );
function child_load_scripts() {
 
	global $jt_use_minified_files;
 
	if ( true == $jt_use_minified_files ) {
		wp_enqueue_script('site-min-js', get_template_directory_uri() . '/js/site.min.js', array(), false, true);
	} else {
				wp_register_script( 'site', get_template_directory_uri().'/js/site.js', array( 'jquery' ) );
		wp_enqueue_script( 'site' );
	}
}

function rustbuilt_sharing() {?>
  <hr>
		<div class="share">
			<h3>Share this event: </h3>
				<a onclick="MM_openBrWindow('http://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode(wp_get_shortlink()); ?>+<?php echo htmlspecialchars(urlencode(html_entity_decode(get_the_title(), ENT_COMPAT, 'UTF-8')), ENT_COMPAT, 'UTF-8'); ?>','Share Inquiri on Facebook','scrollbars=yes,width=650,height=500'); return false;" href="http://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode(wp_get_shortlink()); ?>+<?php echo htmlspecialchars(urlencode(html_entity_decode(get_the_title(), ENT_COMPAT, 'UTF-8')), ENT_COMPAT, 'UTF-8'); ?>" target="_blank"><i class="icon-facebook"></i></a>
				<a onclick="MM_openBrWindow('http://twitter.com/intent/tweet?text=<?php echo urlencode("Via @builtinpgh -"); ?>+<?php echo htmlspecialchars(urlencode(html_entity_decode(get_the_title(), ENT_COMPAT, 'UTF-8')), ENT_COMPAT, 'UTF-8'); ?>%3A%20<?php echo urlencode(get_permalink()); ?>','Share Built in PGH on Twitter','scrollbars=yes,width=650,height=500'); return false;" href="http://twitter.com/home?status=<?php echo urlencode("Via @builtinpgh -"); ?>+<?php echo urlencode(get_the_title()); ?>%3A%20<?php echo urlencode(wp_get_shortlink()); ?>" target="_blank"><i class="icon-twitter icon-2x"></i></a>
				<a onclick="MM_openBrWindow('http://www.linkedin.com/shareArticle?mini=true&url=<?php print(urlencode(get_permalink())); ?>&title=<?php print(urlencode(the_title())); ?>&source= <?php bloginfo('url'); ?>	','google','scrollbars=yes,width=650,height=500'); return false;" href="http://www.linkedin.com/shareArticle?mini=true&url=<?php print(urlencode(get_permalink())); ?>&title=<?php print(urlencode(the_title())); ?>&source= <?php bloginfo('url'); ?>" target="_blank"><i class="icon-linkedin icon-2x"></i></a>

	</div>
  <hr>
	<script type="text/javascript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
//-->
</script><?php
}



function rustbuilt_shortcode() {
	ob_start();
  ?> <HTML>
  <div class="share">
  <h3>Share this event: </h3>
				<a onclick="MM_openBrWindow('http://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode(wp_get_shortlink()); ?>+<?php echo htmlspecialchars(urlencode(html_entity_decode(get_the_title(), ENT_COMPAT, 'UTF-8')), ENT_COMPAT, 'UTF-8'); ?>','Share Inquiri on Facebook','scrollbars=yes,width=650,height=500'); return false;" href="http://www.facebook.com/sharer/sharer.php?u=<?php echo urlencode(wp_get_shortlink()); ?>+<?php echo htmlspecialchars(urlencode(html_entity_decode(get_the_title(), ENT_COMPAT, 'UTF-8')), ENT_COMPAT, 'UTF-8'); ?>" target="_blank"><i class="icon-facebook"></i></a>

				<a onclick="MM_openBrWindow('http://twitter.com/intent/tweet?text=<?php echo urlencode("Via @builtinpgh -"); ?>+<?php echo htmlspecialchars(urlencode(html_entity_decode(get_the_title(), ENT_COMPAT, 'UTF-8')), ENT_COMPAT, 'UTF-8'); ?>%3A%20<?php echo urlencode(get_permalink()); ?>','Share Built in PGH on Twitter','scrollbars=yes,width=650,height=500'); return false;" href="http://twitter.com/home?status=<?php echo urlencode("Via @builtinpgh -"); ?>+<?php echo urlencode(get_the_title()); ?>%3A%20<?php echo urlencode(wp_get_shortlink()); ?>" target="_blank"><i class="icon-twitter icon-2x"></i></a>

				<a onclick="MM_openBrWindow('http://www.linkedin.com/shareArticle?mini=true&url=<?php print(urlencode(get_permalink())); ?>&title=<?php print(urlencode(the_title())); ?>&source= <?php bloginfo('url'); ?>	','google','scrollbars=yes,width=650,height=500'); return false;" href="http://www.linkedin.com/shareArticle?mini=true&url=<?php print(urlencode(get_permalink())); ?>&title=<?php print(urlencode(the_title())); ?>&source= <?php bloginfo('url'); ?>" target="_blank"><i class="icon-linkedin icon-2x"></i></a>

			</div>
  <hr>
			<script type="text/javascript">
				function MM_openBrWindow(theURL,winName,features) {
				  window.open(theURL,winName,features);
				}
//-->
</script><?PHP
  $output_string = ob_get_contents();
  ob_end_clean();
  return $output_string;
}
add_shortcode( 'sharing', 'rustbuilt_shortcode' );