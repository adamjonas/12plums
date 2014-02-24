(function() {
  require.config({
    paths: {
      jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min',
      slides: '/js/vendor/slides'
    },
    shim: {
      slides: {
        deps: ['jquery']
      }
    }
  });

  require(['jquery', 'slides'], function($) {
    $(".inner").show();
    return $("#slides").slidesjs({
      width: 636,
      height: 1000,
      play: {
        active: false,
        effect: "fade",
        interval: 10000,
        auto: true
      },
      pagination: {
        active: false
      },
      navigation: {
        active: false,
        effect: "fade"
      }
    });
  });

}).call(this);
