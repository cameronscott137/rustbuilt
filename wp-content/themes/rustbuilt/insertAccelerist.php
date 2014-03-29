<?php
require_once '../../../wp-load.php';

/**Verify if the given twitter ID exists**/
//forming url
$url = "http://api.twitter.com/1/statuses/user_timeline/".$_POST['twitterid'].".json?count=1";
/*$url="http://api.twitter.com/1/users/show/".$_POST['twitterid'].".xml";*/

$ch = curl_init();
curl_setopt ($ch, CURLOPT_URL, $url);
curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, 20);
curl_setopt($ch, CURLOPT_NOBODY, 1);
curl_setopt($ch, CURLOPT_HEADER, 1);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$curlData = curl_exec($ch);
$header = curl_getinfo($ch, CURLINFO_HTTP_CODE);
curl_close($ch);


if ((empty($_POST['twitterid'])) || ($header == "404") || ($header == "400")) {
    $return['error'] = true;
    $return['msg'] = 'Please enter a valid twitter ID.';
} else {
    
    $result = $wpdb->insert( 'wp_rustbuilders', array( 'twitter_id' => $_POST['twitterid'] ) );
    if(!$result){
        $return['error'] = true;
        $return['msg'] = 'You are already a rustbuilder, '.$_POST['twitterid'].'!';  
    } else {
        $return['error'] = false;
        $return['msg'] = 'Thanks for stepping up, '.$_POST['twitterid'].'!';
        $return['hand'] = '<div class="ablock hoveron twitter-anywhere-user" rel="'.$_POST['twitterid'].'"
style="background-image: url(https://api.twitter.com/1/users/profile_image/'.$_POST['twitterid'].')"> <div class="popup"><div class="popupin"><img class="loader" src="http://rustbuilt.org/wp-content/themes/rustbuilt/library/images/load.gif"/></div></div></div>';  
    }
    
}


echo json_encode($return);
        

?>
