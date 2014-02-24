# requirejs makes life a lot easier when dealing with more than one
# javascript file and any sort of dependencies, and loads faster.

# for more info on require config, see http://requirejs.org/docs/api.html#config
require.config
  paths:
    jquery: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.0/jquery.min'
    slides: '/js/vendor/slides'

  shim:
    slides:
      deps: ['jquery']

require ['jquery', 'slides'], ($) ->
  $(".inner").show()

  $("#slides").slidesjs
    width: 636,
    height: 1000

    play:
      active: false
      effect: "fade"
        # [string] Can be either "slide" or "fade".
      interval: 10000
        # [number] Time spent on each slide in milliseconds.
      auto: true

    pagination:
        # Pagination settings
      active: false

    navigation:
      # Next and previous button settings.
      active: false
        # [boolean] Create next and previous buttons.
        # You can set to false and use your own next/prev buttons.
        # User defined next/prev buttons must have the following:
        # previous: class="slidesjs-previous slidesjs-navigation"
        # next: class="slidesjs-next slidesjs-navigation"
      effect: "fade"
        # [string] Can be either "slide" or "fade".
