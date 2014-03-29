var activeMapSlide = 0;

var downloadButtonLinks = {
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
	leftMapArrow('hide');

	$('#right_arrow').click(function() {
		$('.map-area:eq('+activeMapSlide+')').trigger('click');
	});

	$('#left_arrow').click(function() {
		activeMapSlide--;
		$('.map-area:eq('+(activeMapSlide-1)+')').trigger('click');
	});

	$('.map-area').click(function() {
		var _this = $(this);
		var area = _this.data('area');
		if(area != undefined) {
			clearSelectedClass();
			_this.addClass('selected');
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
			window.location = downloadButtonLinks["slide"+activeMapSlide];
		}
		return false;
	});
});

function clearSelectedClass() {
	jQuery('.map-area').removeClass('selected');
}

function slideMapSections(i) {
	checkMapArrows(i);
	jQuery('.map-slide.active').removeClass('active').animate({'left':'100%', 'opacity':'0'}, 400, function() {
		jQuery('#map_slide_'+i).animate({'left': '0%', 'opacity':'1'}, 600).addClass('active');
	});
}

function showDownloadButton() {
	jQuery('.supportDownloadButton').addClass('full-beam');
}

function checkMapArrows(i) {
	activeMapSlide = i;
	if(activeMapSlide == 1) {
		leftMapArrow('hide');
	} else {
		leftMapArrow('show');
	}
	if(activeMapSlide == 9) {
		rightMapArrow('hide');
	} else {
		rightMapArrow('show');
	}
}

function leftMapArrow(action) {
	if(action == 'hide') {
		jQuery('#left_arrow').fadeOut();
	} else if(action == 'show') {
		jQuery('#left_arrow').fadeIn();
	}
}

function rightMapArrow(action) {
	if(action == 'hide') {
		jQuery('#right_arrow').fadeOut();
	} else if(action == 'show') {
		jQuery('#right_arrow').fadeIn();
	}
}