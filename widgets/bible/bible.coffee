class Dashing.Bible extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.

  redirect: ->
    bible_passage = $(@node).find("#bible-passage").val().replace(/\ /g, "+");
    console.log("bible passage: " + bible_passage);
    window.open(
      "https://www.biblegateway.com/passage/?search=" + bible_passage,
      '_blank'
    );