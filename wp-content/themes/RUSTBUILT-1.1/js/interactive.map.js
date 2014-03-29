var activeMapSlide = 0;

var downloadButtonLinks = {
	slide0: "#",
	slide1: "http://rustbuilt.org/logos/michbuilt.zip",
	slide2: "http://rustbuilt.org/logos/illinibuilt.zip",
	slide3: "http://rustbuilt.org/logos/indybuilt.zip",
	slide4: "http://rustbuilt.org/logos/ohiobuilt.zip",
	slide5: "http://rustbuilt.org/logos/wvabuilt.zip",
	slide6: "http://rustbuilt.org/logos/pennabuilt.zip",
	slide7: "http://rustbuilt.org/logos/nybuilt.zip"
};

jQuery(document).ready(function($) {
	var downloadShowing = false;
	/* leftMapArrow('hide'); */

	$('#right_arrow').click(function() {
		if( activeMapSlide == 7 ){
			$('.map-area').removeClass('selected');
			hideDownloadButton();
			downloadShowing = false;
			slideMapSections(0);
			activeMapSlide = 0;
		}
		else {
		$('.map-area:eq('+(activeMapSlide+1)+')').trigger('click');
		}
	});

	$('#left_arrow').click(function() {
		if( activeMapSlide == 1 ){
			$('.map-area').removeClass('selected');
			hideDownloadButton();
			downloadShowing = false;
			slideMapSections(0);
			activeMapSlide = 0;
		}
		else{
		
			if( activeMapSlide == 0 ){
				activeMapSlide = 8;
			}
			$('.map-area:eq('+(activeMapSlide-1)+')').trigger('click');
		}
	});

	$('.map-area').click(function() {
		var _this = $(this);
		var area = _this.data('area');
		if(area != undefined) {
			clearSelectedClass();
			_this.addClass('selected');
			$('.map-area').each(function() {
				if($(this).data('area') == area) {
					$(this).addClass('selected')
				}});
			if(!downloadShowing) {
				showDownloadButton();
				downloadShowing = true;
			}
			slideMapSections(area);
		}
	}).mouseover(function() {
		var area = $(this).data('area');
		$('.map-area').each(function() {
			if($(this).data('area') == area) {
				$(this).addClass('hovered');
			}
		});
	}).mouseout(function() {
		$('.map-area').removeClass('hovered');
	});

	$('.supportDownloadButton').click(function() {
		if(downloadShowing) {
		    window.location = jQuery('#map_slide_'+activeMapSlide).attr('zipurl');
			//window.location = downloadButtonLinks["slide"+activeMapSlide];
		}
		return false;
	});
});

function clearSelectedClass() {
	jQuery('.map-area').removeClass('selected');
}

function slideMapSections(i) {
	
	activeMapSlide = i;
	jQuery('.map-slide.active').removeClass('active').animate({'left':'100%', 'opacity':'0'}, 400, function() {
		jQuery('#map_slide_'+i).animate({'left': '0%', 'opacity':'1'}, 600).addClass('active');
	});
}

function showDownloadButton() {
	jQuery('.supportDownloadButton').addClass('full-beam');
}

function hideDownloadButton() {
	jQuery('.supportDownloadButton').removeClass('full-beam');
}

