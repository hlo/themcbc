class Dashing.Countdown extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.

  redirect: ->
    countdown_value = $(@node).find("#countdown-value").val()
    console.log("countdown value: " + countdown_value)
    window.open(
      "http://e.ggtimer.com/" + countdown_value + "minutes",
      '_blank'
    )