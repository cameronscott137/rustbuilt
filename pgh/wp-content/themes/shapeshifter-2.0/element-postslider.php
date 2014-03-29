		<?php if(get_option_tree('homepage_slider')) : ?>
				
			<div class="slider-shadow twelve columns alpha omega">
				<div class="flexslider-container">
					<div id="post_slider" class="flexslider"> 
					  <ul class="slides">
					    <?php
						if ( function_exists( 'ot_get_option' ) ) {
						  $slides = get_custom_field( 'homepage_slider', $option_tree );
						  foreach( $slides as $slide ) {
						  							
							$lightbox_link = ' data-rel="prettyPhoto[]" ';								
							
							//Check if it's a JPG
							if(strstr($slide['link'], '.jpg')) { 
							$slidelink = '<a href="'.$slide['link'].'" '.$lightbox_link.' >'; 
							$slideendlink = '</a>';
							} 
							
							//Check if it's a PNG
							elseif(strstr($slide['link'], '.png')) { 
							$slidelink = '<a href="'.$slide['link'].'" '.$lightbox_link.' >'; 
							$slideendlink = '</a>';
							} 
							
							//Check if it's a Vimeo
							elseif(strstr($slide['link'], 'vimeo.com')) { 
							$slidelink = '<a href="'.$slide['link'].'" '.$lightbox_link.' >'; 
							$slideendlink = '</a>';
							} 
							
							//Check if it's a YouTube
							elseif(strstr($slide['link'], 'youtube.com')) { 
							$slidelink = '<a href="'.$slide['link'].'" '.$lightbox_link.' >'; 
							$slideendlink = '</a>';
							} 
							
							//Check if it's a MOV
							elseif(strstr($slide['link'], '.mov')) { 
							$slidelink = '<a href="'.$slide['link'].'" '.$lightbox_link.' >'; 
							$slideendlink = '</a>';
							} 
														
							//If not, just link out
							elseif($slide['link']) { 
							$slidelink = '<a href="'.$slide['link'].'">'; 
							$slideendlink = '</a>';
							} 
							
							//Or do nothing
							else {
							$slidelink = ''; 
							$slideendlink = '';
							}	
							
							if($slide['description']) { 
							$slidecaption = '<p class="flex-caption">'.$slide['description'].'</p>'; 		
							} else {
							$slidecaption = ' ';
							}	
						  
						    echo ' 
						    <li>
						     '.$slidelink.'<img src="'.$slide['image'].'" alt="'.$slide['title'].'" />'.$slideendlink.'
							 '.$slidecaption.'
						    </li>';
						  }
						}
						?>
					  </ul>
					</div>
				</div>			
			</div>
		
			
			<?php else : ?>
			
			<div class="supertagline">
			Howdy! Setting up your theme huh? Visit the "Appearance > Theme Options" Page to get started, and be sure to upload some slides to the Front Page Slider to remove this message. You can also set another page as the homepage from "Settings > Reading". Rock on!
			<br /><br />
			<a target="_blank" href="http://mdnw.net/html/wp-content/themes/super-skeleton/help/Theme_Install_Checklist.pdf">Theme Install Checklist (PDF)</a>
			</div>
			<br /><br />
		
			<?php endif; ?>
		