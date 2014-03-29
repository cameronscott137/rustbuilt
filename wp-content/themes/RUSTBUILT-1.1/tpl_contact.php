<?php
/*
Template Name: contact_us
*/
?>
<?php 

if(isset($_POST['contact-us-submit'])){
    //collect submitted data
    $name = $_POST['cm-name'];
    $website = $_POST['cm-f-eljz'];
    $zipcode = $_POST['cm-f-eljv'];
    $email = $_POST['cm-iyyudu-iyyudu'];
    $want_to_know = $_POST['want-to-know'];
    $subject = $_POST['cm-f-eljs'];
    $message = $_POST['cm-f-eltg'];

    if (filter_var($email, FILTER_VALIDATE_EMAIL)){

        //set parameters for mail() function
        $to = 'patina@rustbuilt.org';
        $body = '
            <html>
            <head>
              <title>BOND WITH RUSTBUILT</title>
            </head>
            <body>
              <table>
                <tr><td>Name: </td><td>'.$name.'</td></tr>
                <tr><td>Website: </td><td>'.$website.'</td></tr>
                <tr><td>Email: </td><td>'.$email.'</td></tr>
                <tr><td> </td><td>'.$want_to_know.'</td></tr>    
                <tr><td>Subject: </td><td>'.$subject.'</td></tr>
                <tr><td>Message: </td><td>'.$message.'</td></tr>    
              </table>
            </body>
            </html>
            ';
        // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

        // Additional headers
        $headers .= "From: ".$email."\r\n"; // Or sendmail_username@hostname by default

        //if success in mail submission, subscribe user on campaign monitor
        if ( mail($to, $subject, $body, $headers) ) {

            require_once 'campaignmonitor-createsend-php-e9e0e5c/csrest_subscribers.php';

            $wrap = new CS_REST_Subscribers('b887db61d7984982ee331b8e4313311e', '3904680386143d73d357f5e156e216dd');
            $result = $wrap->add( array(
                'EmailAddress' => $email,
                'Name' => $name,
                'CustomFields' => array(
                    array( 'Key' => 'website', 'Value' => $website ),
                    array( 'Key' => 'zipcode', 'Value' => $zipcode ),
                    array( 'Key' => 'want-to-know', 'Value' => $want_to_know ),
                    array( 'Key' => 'subject', 'Value' => $subject ),
                    array( 'Key' => 'message', 'Value' => $message )
                ),
                'Resubscribe' => true
            ));

            if($result->was_successful()) {
                header( 'Location: http://rustbuilt.createsend.com/t/Subscribed' ) ;
            }       
        } 
    }else {
            header( 'Location: http://rustbuilt.createsend.com/t/j/s/iyyudu/' ) ;
    }
} 
?>
<?php get_header(); ?>
			<div id="content">
                            	<!-- AddThis Button BEGIN -->
				<div class="social_components wrap clearfix">
					<div class="addthis_toolbox addthis_default_style ">
						<a class="addthis_button_tweet" addthis:url="http://rustbuilt.org/" addthis:title="WE ARE RUSTBUILT" ></a>
				                <a class="addthis_button_facebook_like" fb:like:layout="button_count" addthis:url="https://www.facebook.com/Rustbuilt" addthis:title="WE ARE RUSTBUILT" ></a>
					</div>
					<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=xa-508fcf2d7cb1e788"></script>
				</div>
				<!-- AddThis Button END -->
				
				<?php	$page_desc = simple_fields_get_post_group_values(get_the_id(), "page_short_desc", $use_name = true, $return_format = 2); ?>
				<div class="wrap clearfix">
					<div class="page_desc">
						<h1><?php echo $page_desc [0]['page_title'];?></h1>
						<h5><?php echo $page_desc [0]['page_tagline'];?></h5>
					</div>
					<div class="page_content">
					    <form action="#" method="post" id="subForm" class="contact_form">
                                                <input type="text" name="cm-name" id="name" />
                                                <input type="text" name="cm-f-eljz" id="website" />
                                                <input type="text" name="cm-f-eljv" id="zipcode" />
                                                <input type="text" name="cm-iyyudu-iyyudu" id="iyyudu-iyyudu" />
                                                <div class="saperator"></div>
                                                <select name="want-to-know" >
                                                    <option>I want to know more about Sponsorship</option>
                                                    <option>How can I help?</option>
                                                    <option>I have more data or a correction</option>
						    <option>I have a general question</option>
                                                </select>
                                                <input type="text" name="cm-f-eljs" id="subject" />
                                                <textarea type="text" name="cm-f-eltg" id="message" /></textarea>
												<div class="form_submit_btn">
													<input type="submit" name="contact-us-submit" value="Submit" />
												</div>
                                            </form>
                                        </div>
				</div>
			</div> <!-- end #content -->

<?php get_footer(); ?>