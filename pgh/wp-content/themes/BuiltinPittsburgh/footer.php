  
  </div> <!-- End #main -->
  <div class="clearfix"></div>
<footer class="row-fluid" id="footer" role="contentinfo" itemscope="itemscope" itemtype="http://schema.org/WPFooter">
  <section class="footer-widget span4">
    <aside id="mail" class="widget %2$s">
      <div class="textwidget">
          <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("footer-1") ) : ?>
          <?php endif; ?>  
      </div>
    </aside>
  </section>
  <section id="second" class="footer-widget span4">
        <h3 class="widget-title">The Built in PGH Mailing List</h3>
        <div class="textwidget">
             <p>Weekly PGH startup news, events, and jobs.</p>
            <form action="http://seedinnovation.us6.list-manage.com/subscribe/post?u=1c9fa6c7f719b48c4fe6cda23&amp;id=830129a70b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                    <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="Email address..." required>
                    <input type="submit" value="Sign Me Up!" name="subscribe" id="mc-embedded-subscribe" class="button">
            </form>
        </div>
  </section>
  <section class="footer-widget span4">
    <?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("footer-3") ) : ?>
        <?php endif; ?>
  </section>
</footer>
</div><!-- End #page -->
</div> <!-- end container -->

<footer id="rustbuilt">
    <section class="left"><a href="http://www.rustbuilt.org" target="_blank"><img class="clearfix" src="<?php echo get_bloginfo( 'template_directory' )?>/images/rustbuilt.png"></a>
        <p>&copy; <?php echo date ('Y');?> <a href="http://www.rustbuilt.org" target="_blank">Rustbuilt</a> | All Rights Reserved</p>
    </section>
</footer>

<!-- scripts -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="<?php bloginfo('template_directory'); ?>/bootstrap/js/bootstrap.js"></script>
<script src="<?php bloginfo('template_directory'); ?>/js/tinynav.min.js"></script>
<script src="<?php bloginfo('template_directory'); ?>/js/dropdown.min.js"></script>
<script src="<?php bloginfo('template_directory'); ?>/js/waypoints.min.js"></script>
<script src="<?php bloginfo('template_directory'); ?>/js/jquery.scrollTo-1.4.3.1-min.js"></script> 
<script src="<?php bloginfo('template_directory'); ?>/js/jquery.localscroll-1.2.7-min.js"></script>
 <script>
    $(function () {

      // TinyNav.js 1
      $('#test').tinyNav({
         header: 'Navigation'
      });

            // TinyNav.js 1
      $('#dropdown').tinyNav({
         active: 'Rustbuilt'
      });
      
    });
  </script>
<script>
    var nav = $(".branding-container");
    var footer = $("#footer").outerHeight() + $("#rustbuilt").outerHeight();
    var sidebar = $(".branding-container").width()
    $(window).resize(function() {
        sidebar = $(".branding-container").width();
        footer = $("#footer").outerHeight() + $("#rustbuilt").outerHeight()
    });
    $("#footer").waypoint(function(direction) {
      if (direction == "down") {
          nav.removeClass('sticky')
            .css('bottom', footer)
            .css('width', sidebar);
        } else {
          nav.addClass('sticky')
              .css('bottom', '')
              .css('width', '');
        }
      },
        { offset: function() {
        return footer + 200;
  }
});
</script>
<script>  
  jQuery(document).ready(function($) {
    $('#menu-primary-navigation').localScroll(
    {
      duration: 700,
      offset: -25
    })
});
</script>

<?php wp_footer(); ?>
</body>
</html>