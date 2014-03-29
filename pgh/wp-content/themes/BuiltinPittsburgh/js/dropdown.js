
(function() {

(function(w){
      var $container = $('.offcanvas-top'),
				$cHeight = $('.o-content').outerHeight();
			$(document).ready(function() {
				buildCanvas();
			});

			function buildCanvas() {
				$('<a href="#" class="tab" id="trigger">Sign Up!</a>').appendTo($container);
				$('#trigger, #test').bind('click', function(e) {
					e.preventDefault();
					var $this = $(this);
					$container.toggleClass('active');
					if($container.hasClass('active')) {
						$container.height($cHeight);
						$this.text('Do it!');
					} else {
						$container.height(40);
						$this.text('Sign Up!');
					}
				});

			}

			$(window).resize(function() { //On Window resizeBy(
				$cHeight = $('.o-content').outerHeight();
        console.log($cHeight);
			});

		})(this);
    if (document.location.search.match(/type=embed/gi)) {
      window.parent.postMessage('resize', "*");
    }

})();
