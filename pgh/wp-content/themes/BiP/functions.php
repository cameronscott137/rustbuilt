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

	/* ========================================================================================================================
	
	Required external files
	
	======================================================================================================================== */

	require_once( 'external/starkers-utilities.php' );
	require_once( 'custom-post-types.php' );

	/* ========================================================================================================================
	
	Theme specific settings

	======================================================================================================================== */


	/* Images */
	add_theme_support('post-thumbnails');
	add_image_size( 'rustbuilt', 860, 560, true ); // 220 pixels wide by 180 pixels tall, hard crop mode
	

	/* Menus */
	register_nav_menus(array('primary' => 'Primary Navigation'));
	register_nav_menus(array('footer' => 'Footer Navigation'));

		function bip_widgets_init() {
		    register_sidebar( array(
		        'name' => __( 'Responsive Calendar', 'bip' ),
		        'id' => 'calendar',
				'description' => __( 'This text will appear in the bottom-left footer of every page', 'bip' ),
				'before_widget' => '<aside class="col-md-4 widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
		    ) );
		    register_sidebar( array(
		        'name' => __( 'Footer: About', 'bip' ),
		        'id' => 'footer-1',
				'description' => __( 'This text will appear in the bottom-left footer of every page', 'bip' ),
				'before_widget' => '<aside class="col-md-4 widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
		    ) );
		    register_sidebar( array(
				'name' => __( 'Footer: Twitter', 'bip' ),
				'id' => 'footer-2',
				'description' => __( 'This is where your bio goes', 'bip' ),
				'before_widget' => '<aside class="col-md-4 widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );
			register_sidebar( array(
				'name' => __( 'Footer: Sponsors', 'bip' ),
				'id' => 'footer-3',
				'description' => __( 'This is where your sponsor list goes', 'bip' ),
				'before_widget' => '<aside class="col-md-4 widget %2$s">',
				'after_widget' => "</aside>",
				'before_title' => '<h3 class="widget-title">',
				'after_title' => '</h3>',
			) );
		}

		add_action( 'widgets_init', 'bip_widgets_init' );

	/* Excerpts */

		function bip_new_excerpt_more($more) {
		       global $post;
		       if ( is_page_template('template-medium.php') )
					return '... <a class="read-more" href="'. get_permalink($post->ID) . '">Read More »</a>';
			   else
					return '...<a class="read-more" href="' . get_post_type() . '/#' . basename(get_permalink()) . '">Read More »</a>';
		}
		add_filter('excerpt_more', 'bip_new_excerpt_more');

		function bip_custom_excerpt_length( $length ) {
			if ( is_page_template('template-medium.php') )
				return 20;
			else
				return 50;
		}
		add_filter( 'excerpt_length', 'bip_custom_excerpt_length', 999 );

	/* Metaboxes */
	include_once 'metaboxes/setup.php';
	include_once 'metaboxes/simple-spec.php';
	//include_once 'metaboxes/full-spec.php';
	//include_once 'metaboxes/checkbox-spec.php';
	//include_once 'metaboxes/radio-spec.php';
	//include_once 'metaboxes/select-spec.php';

	/* ========================================================================================================================
	
	Actions and Filters
	
	======================================================================================================================== */

	add_action( 'wp_enqueue_scripts', 'starkers_script_enqueuer' );

	add_filter( 'body_class', array( 'Starkers_Utilities', 'add_slug_to_body_class' ) );
	

	/* ========================================================================================================================
	
	Custom Post Types - include custom post types and taxonimies here e.g.

	e.g. require_once( 'custom-post-types/your-custom-post-type.php' );
	
	======================================================================================================================== */



	/* ========================================================================================================================
	
	Scripts
	
	======================================================================================================================== */

	/**
	 * Add scripts via wp_head()
	 *
	 * @return void
	 * @author Keir Whitaker
	 */

	function starkers_script_enqueuer() {
		wp_register_script( 'site', get_template_directory_uri().'/site.min.js', array( 'jquery' ) );
		wp_enqueue_script( 'site' );

        wp_register_style( 'screen', get_stylesheet_directory_uri().'/style.min.css', '', '', 'screen' );
        wp_enqueue_style( 'screen' );
	}
    
	/* Font Awesome */
    function fontAwesome() {
            wp_register_style('fontAwesome', '//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css');
            wp_enqueue_style( 'fontAwesome');
        }
    add_action('wp_print_styles', 'fontAwesome');

    /* Typekit */
    function theme_typekit() {
	    wp_enqueue_script( 'theme_typekit', '//use.typekit.net/jmn3nas.js');
		}
	add_action( 'wp_enqueue_scripts', 'theme_typekit' );

	function theme_typekit_inline() {
		  if ( wp_script_is( 'theme_typekit', 'done' ) ) { ?>
		  	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
		<?php }
		}
	add_action( 'wp_head', 'theme_typekit_inline' );

	/*function google_maps() {
		    wp_enqueue_script( 'google_maps', 'https://maps.googleapis.com/maps/api/js?key=AIzaSyDYMzd3SjUs31jQyIOPo08k_QpHorHEUDs&sensor=false');
		}
	add_action( 'wp_enqueue_scripts', 'google_maps' );
	/* ========================================================================================================================
	
	Comments
	
	======================================================================================================================== */

	/**
	 * Custom callback for outputting comments 
	 *
	 * @return void
	 * @author Keir Whitaker
	 */
	function starkers_comment( $comment, $args, $depth ) {
		$GLOBALS['comment'] = $comment; 
		?>
		<?php if ( $comment->comment_approved == '1' ): ?>	
		<li>
			<article id="comment-<?php comment_ID() ?>">
				<?php echo get_avatar( $comment ); ?>
				<h4><?php comment_author_link() ?></h4>
				<time><a href="#comment-<?php comment_ID() ?>" pubdate><?php comment_date() ?> at <?php comment_time() ?></a></time>
				<?php comment_text() ?>
			</article>
		<?php endif;
	}