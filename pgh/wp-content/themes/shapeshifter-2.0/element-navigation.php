				
				
<ul id="menu-primary-menu" class="sf-menu dark sf-js-enabled sf-shadow slide-menu">
	<li class="nav_calendar">
		<a href="http://builtinpgh.com/#calendar">Calendar<span></span></a>
	</li>
	<li class="nav_companies">
		<a href="http://builtinpgh.com/#companies">Companies<span></span></a></li>
	<li class="nav_jobs"><a href="http://builtinpgh.com/#jobs">Jobs<span></span></a></li>
	<li class="nav_submit"><a style="padding-right: 20px;" href="http://builtinpgh.com/#submit">Submit an Event<span></span></a></li>
</ul>
<ul style="border-top: 1px solid #333; box-shadow: 0px -1px 0 #111; padding-top: 10px;" id="menu-primary-menu" class="sf-menu dark sf-js-enabled sf-shadow slide-menu">
	<li class="nav_pittsburgh-venture-capital-resources"><a style="padding-right: 20px;" href="http://builtinpgh.com/pittsburgh-venture-capital-resources">Capital<span></span></a></li>	
</ul>

<?php if ( has_nav_menu( 'topbar' ) ) : ?> 


				<!-- DEFAULT NAVIGATION -->
				<?php wp_nav_menu( array(
					 'container' =>false,
					 'theme_location' => 'topbar',
					 'menu_class' => 'sf-menu dark external',
					 'echo' => true,
					 'before' => '',
					 'after' => '',
					 'link_before' => '',
					 'link_after' => '',
					 'depth' => 4,
					 'walker' => new description_walker())
				 ); ?>
				 <!-- /DEFAULT NAVIGATION -->


<?php endif; ?>				 
				 
				 <!-- RESPONSIVE NAVIGATION FLIP -->
				<form id="responsive-nav" action="" method="post">
				<select class="chzn-select">
				<option value="">Navigation</option>
				<?php 
				
				$menu = wp_nav_menu(array('theme_location' => 'topbar_small', 'menu' => 'mobile', 'depth' => 1, 'echo' => false));
				   if (preg_match_all('#(<a [^<]+</a>)#',$menu,$matches)) {
				      $hrefpat = '/(href *= *([\"\']?)([^\"\' ]+)\2)/';
				      foreach ($matches[0] as $link) {
				         // Do something with the link
				         if (preg_match($hrefpat,$link,$hrefs)) {
				            $href = $hrefs[3];
				         }
				         if (preg_match('#>([^<]+)<#',$link,$names)) {
				            $name = $names[1];
				         }
				         echo "<option value=\"$href\">$name</option>";
				      }
				   }				
				
				?>
				</select>
				</form>
				<!-- /END RESPONSIVE NAV -->