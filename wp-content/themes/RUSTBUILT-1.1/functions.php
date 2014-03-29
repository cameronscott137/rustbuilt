<?php

/*Enque jquery.js*/
function my_scripts_method() {
    wp_enqueue_script( 'jquery' );
}    
add_action('wp_enqueue_scripts', 'my_scripts_method');


/**
 * RUSTBUILT functions and definitions
 */
//funstion loads twitter-id's of all the RustBuilders and renders their twitter-avatar
function loadRustbuilderss() {
    //fetch stored rustbuilders twitterid from database
    global $wpdb;
    $rustbuilders = $wpdb->get_results("SELECT * FROM wp_rustbuilders ORDER BY id DESC;");
    
    //display twitter avatar for each twitter id.
    foreach ($rustbuilders as $rustbuilder) {
            echo '<div class="ablock twitter-anywhere-user" rel="'.$rustbuilder->twitter_id.'">
            <a class="proimg" style="background-image: url('.get_stylesheet_directory_uri().'/twitter_images/'.strtolower($rustbuilder->twitter_id).'.jpg)"
            href="http://twitter.com/'.$rustbuilder->twitter_id.'" target="_blank"><br/></a>
            <div class="popup"><div class="popupin"><img class="loader" src="'.get_bloginfo( 'stylesheet_directory' ).'/images/load.gif"/></div></div></div>';	
        }
}