jQuery(document).ready(function($) {  
  
  
/*-----------------------------------------------------------------------------------*/
/*	Navigation slide controller
/*-----------------------------------------------------------------------------------*/		 		

	jQuery('a[href*=#]').click(function() {

	$(".sf-menu li a").removeClass("current-menu-item");
	$(this).addClass("current-menu-item");	
	
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
    && location.hostname == this.hostname) {
      var $target = $(this.hash);
      $target = $target.length && $target
      || $('[name=' + this.hash.slice(1) +']');
      if ($target.length) {
        var targetOffset = $target.offset().top - 55,
        duration=800,
		easing="easeInOutExpo";
        $('html,body')
        .animate({scrollTop: targetOffset}, 800, "easeInOutExpo");
       return false;
      }
    }
    });
    			

	// Based roughly on Christian Kriesi's Amazing Slide Script
	jQuery(window).resize(function() {
	
			var sidebar 	= $("#section-sidebar"),
				tophat		= $("#section-tophat"),
				sb_menu 	= sidebar.find('.sf-menu'),
				sb_offset	= sidebar.offset(),
				win 		= $(window),
				
				
				//check if the sidebar exceeds the window viewport height. if thats not the case make it static
				set_sidebar = function()
				{
					if(sidebar.height() + sb_offset.top> win.height()) 
					{ 
						sidebar.css({position:'relative'}); 
					}
					else
					{
						sidebar.css({position:'fixed'}); 
					}
				};
				
			set_sidebar();
			win.resize(set_sidebar);
		});
	
	
/*-----------------------------------------------------------------------------------*/
/*	WayPoints - sets the # active link for the module you're scrolled to.
/*-----------------------------------------------------------------------------------*/

		$('.home .content_block:nth-child(0)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(0) a").addClass("current-menu-item");
		});
		
		$('.home .content_block:nth-child(1)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(1) a").addClass("current-menu-item");
		});
		
		
		$('.home .content_block:nth-child(2) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(2) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(2)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(2) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		$('.home .content_block:nth-child(3) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(3) a").addClass("current-menu-item");
		}, { offset: '1%' });
			
		$('.home .content_block:nth-child(3)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(3) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		$('.home .content_block:nth-child(4) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(4) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(4)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(4) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		$('.home .content_block:nth-child(5) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(5) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(5)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(5) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		
		$('.home .content_block:nth-child(6) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(6) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(6)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(6) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		
		$('.home .content_block:nth-child(7) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(7) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(7)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(7) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		
		$('.home .content_block:nth-child(8) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(8) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(8)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(8) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		
		$('.home .content_block:nth-child(9) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(9) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(9)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(9) a").addClass("current-menu-item");
		}, { offset: '60%' });
		
		
		
		$('.home .content_block:nth-child(10) a.waypoint_marker').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(10) a").addClass("current-menu-item");
		}, { offset: '1%' });
		
		$('.home .content_block:nth-child(10)').waypoint(function() {
		   $(".slide-menu li a").removeClass("current-menu-item");
		   $(".slide-menu li:nth-child(10) a").addClass("current-menu-item");
		}, { offset: '60%' });


/*-----------------------------------------------------------------------------------*/
/*	Filterable - http://www.gethifi.com/blog/a-jquery-plugin-to-create-an-interactive-filterable-portfolio-like-ours
/*-----------------------------------------------------------------------------------*/

		 $('#portfolio-list').filterable(); // ACTIVATE FILTER SCRIPT
		 
		 //ADD CLEARING CLASSES DYNAMICALLY RATHER THAN THROUGH CSS		 
		 $("#.portfolio-4 .module-container:nth-child(4n+1)").addClass("clearleft");		
		 $("#.portfolio-3 .module-container:nth-child(3n+1)").addClass("clearleft");		
		 $("#.portfolio-2 .module-container:nth-child(2n+1)").addClass("clearleft");	
		 
		 $("#.portfolio-4 .module-container:nth-child(4n+4)").addClass("clearright");		
		 $("#.portfolio-3 .module-container:nth-child(3n+3)").addClass("clearright");		
		 $("#.portfolio-2 .module-container:nth-child(2n+2)").addClass("clearright");	
		 
		 $("#.hybrid-blog-4 .hybrid:nth-child(4n+1)").addClass("clearleft");		
		 $("#.hybrid-blog-3 .hybrid:nth-child(3n+1)").addClass("clearleft");		
		 $("#.hybrid-blog-2 .hybrid:nth-child(2n+1)").addClass("clearleft");	
		 
		 $("#.hybrid-blog-4 .hybrid:nth-child(4n+4)").addClass("clearright");		
		 $("#.hybrid-blog-3 .hybrid:nth-child(3n+3)").addClass("clearright");		
		 $("#.hybrid-blog-2 .hybrid:nth-child(2n+2)").addClass("clearright");
		 
		 $("#.breakout-row .module-container:nth-child(3n+6)").addClass("clearleft");	
		 
		 $("a.button").click(function () { 
		 	
		 	$("#.portfolio-4 .module-container").removeClass("clearleft").css('height', $(".module-container").height());
			$("#.portfolio-3 .module-container").removeClass("clearleft").css('height', $(".module-container").height());
			$("#.portfolio-2 .module-container").removeClass("clearleft").css('height', $(".module-container").height());
			
		 });

		 
		 // Default Override Section
		 // Now set inside each individual template-XXX.php file
		 // Then the script is activated inside the footer.php file

		 // Stop editting. The next section is our button actions. 
		 // Use this for research if you're having trouble understanding how the column count thing works. 
		 // ie: Note the differences between the Four Columns classes and the Three Columns classes.
		 
		 // Four Column Buttons Actions
		 $("span.4-col-grid").click(function () {
			 $("#portfolio-list .module-container").removeClass("twelve columns").addClass("three columns");
			 $("#portfolio-list .module-img").removeClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeOut(100).removeClass("four three columns alpha omega visible");
			 $(".list_btn").css("opacity","1");
			 $(".hybrid_btn").css("opacity","1");
			 $(".grid_btn").css("opacity","0.5");
			   $("#.portfolio-4 .module-container").css('height', 'auto');
		 });
		 
		 $("span.4-col-hybrid").click(function () {
			 $("#portfolio-list .module-container").removeClass("twelve columns").addClass("three columns");
			 $("#portfolio-list .module-img").removeClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeIn(300).removeClass("four omega").addClass("three columns alpha visible");
			 $(".list_btn").css("opacity","1");
			 $(".hybrid_btn").css("opacity","0.5");
			 $(".grid_btn").css("opacity","1");
			   $("#.portfolio-4  .module-container").css('height', 'auto');
		 }); 
		 
		 $("span.4-col-list").click(function () {
			 $("#portfolio-list .module-container").removeClass("three columns").addClass("twelve columns");			 
			 $("#portfolio-list .module-img").addClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeIn(300).removeClass("alpha").addClass("four columns omega visible");
			 $(".list_btn").css("opacity","0.5"); 
			 $(".hybrid_btn").css("opacity","1");
			 $(".grid_btn").css("opacity","1");
			   $("#.portfolio-4 .module-container").css('height', 'auto');
		 }); 
		 
		 // Three Column Buttons Actions
		 $("span.3-col-grid").click(function () {
			 $("#portfolio-list .module-container").removeClass("twelve columns").addClass("four columns");
			 $("#portfolio-list .module-img").removeClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeOut(100).removeClass("four columns alpha omega visible");
			 $(".list_btn").css("opacity","1");
			 $(".hybrid_btn").css("opacity","1");
			 $(".grid_btn").css("opacity","0.5");
			   $("#.portfolio-3 .module-container").css('height', 'auto');
		 });
		 
		 $("span.3-col-hybrid").click(function () {
			 $("#portfolio-list .module-container").removeClass("twelve columns").addClass("four columns columns");
			 $("#portfolio-list .module-img").removeClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeIn(300).removeClass("omega").addClass("four columns alpha visible");
			 $(".list_btn").css("opacity","1");
			 $(".hybrid_btn").css("opacity","0.5");
			 $(".grid_btn").css("opacity","1");
			   $("#.portfolio-3 .module-container").css('height', 'auto');
		 }); 
		 
		 $("span.3-col-list").click(function () {
			 $("#portfolio-list .module-container").removeClass("four columns").addClass("twelve columns");			 
			 $("#portfolio-list .module-img").addClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeIn(300).removeClass("four columns alpha").addClass("four columns omega visible");
			 $(".list_btn").css("opacity","0.5"); 
			 $(".hybrid_btn").css("opacity","1");
			 $(".grid_btn").css("opacity","1");
			   $("#.portfolio-3 .module-container").css('height', 'auto');
		 }); 
		 		 
		 // Two Column Buttons Actions
		 $("span.2-col-grid").click(function () {
			 $("#portfolio-list .module-container").removeClass("twelve columns").addClass("six columns");
			 $("#portfolio-list .module-img").removeClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeOut(100).removeClass("four columns alpha omega visible");
			 $(".list_btn").css("opacity","1");
			 $(".hybrid_btn").css("opacity","1");
			 $(".grid_btn").css("opacity","0.5");
			   $("#.portfolio-2 .module-container").css('height', 'auto');
		 });
		 
		 $("span.2-col-hybrid").click(function () {
			 $("#portfolio-list .module-container").removeClass("twelve columns").addClass("six columns");
			 $("#portfolio-list .module-img").removeClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeIn(300).removeClass("four columns omega").addClass("six columns alpha visible");
			 $(".list_btn").css("opacity","1");
			 $(".hybrid_btn").css("opacity","0.5");  
			 $(".grid_btn").css("opacity","1");
			   $("#.portfolio-2 .module-container").css('height', 'auto');
		 }); 
		 
		 $("span.2-col-list").click(function () {
			 $("#portfolio-list .module-container").removeClass("six columns").addClass("twelve columns");			 
			 $("#portfolio-list .module-img").addClass("eight columns alpha");
			 $("#portfolio-list .module-meta").fadeIn(300).removeClass("eight six columns alpha").addClass("four columns omega visible");
			 $(".list_btn").css("opacity","0.5"); 
			 $(".hybrid_btn").css("opacity","1");
			 $(".grid_btn").css("opacity","1");
			   $("#.portfolio-2 .module-container").css('height', 'auto');
		 }); 
		 

/*-----------------------------------------------------------------------------------*/
/* prettyPhoto or rLightbox - http://www.no-margin-for-errors.com/projects/prettyphoto-jquery-lightbox-clone/
/* Change this to rlightbox or prettyPhoto
/*-----------------------------------------------------------------------------------*/
		$("a[data-rel^='prettyPhoto']").prettyPhoto();
		$("a[rel^='prettyPhoto']").prettyPhoto();
		$(".XYZ a").prettyPhoto();
		$("a.boxLink").prettyPhoto();
		$(".gallery-item a").prettyPhoto();
		
		$("a[rel^='instagram-sc-images']").prettyPhoto();
		$("a[rel^='instagram-images']").prettyPhoto();
		
		
  		 
/*-----------------------------------------------------------------------------------*/
/*	DropDown Menu - http://users.tpg.com.au/j_birch/plugins/superfish/
/*-----------------------------------------------------------------------------------*/
		/*  $(".menu ul li").horizontalMenu({
			timeHide: 900
		});	 */
	
  		
		 $("ul.sf-menu").supersubs({
		 	minWidth:    13,   // minimum width of sub-menus in em units 
            maxWidth:    27,   // maximum width of sub-menus in em units 
            extraWidth:  0    // extra width can ensure lines don't sometimes turn over 
                               // due to slight rounding differences and font-family 
		 }).superfish({
		 	delay: 600,
		 	Speed: 'normal',
		 	animation:   {opacity:'show'},
		 	autoArrows: true
		 }); 
		 
		 $("#responsive-nav select").change(function() {
  			window.location = $(this).find("option:selected").val();
		 });




/*-----------------------------------------------------------------------------------*/
/*	PERSISTENT HEADER - http://css-tricks.com
/*-----------------------------------------------------------------------------------*/
	
	function UpdateTableHeaders() {
	   $(".persist-area").each(function() {
	
	       var el             = $(this),
	           offset         = el.offset(),
	           scrollTop      = $(window).scrollTop(),
	           floatingHeader = $(".floatingHeader", this)
	
	       if ((scrollTop > offset.top) && (scrollTop < offset.top + el.height())) {
	           floatingHeader.css({
	            "visibility": "visible"
	           });
	       } else {
	           floatingHeader.css({
	            "visibility": "hidden"
	           });
	       };
	   });
	}
	
	// DOM Ready
	$(function() {
	
	   var clonedHeaderRow;
	
	   $(".persist-area").each(function() {
	       clonedHeaderRow = $(".persist-header", this);
	       clonedHeaderRow
	         .before(clonedHeaderRow.clone())
	         .css("width", clonedHeaderRow.width())
	         .addClass("floatingHeader");
	
	   });
	
	   $(window)
	    .scroll(UpdateTableHeaders)
	    .trigger("scroll");
	
	});

});