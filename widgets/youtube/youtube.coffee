class Dashing.Youtube extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.

  redirect: ->
    youtube_search_value = $(@node).find("#youtube-search-value").val().replace(/\ /g, "+");
    console.log("youtube search value: " + youtube_search_value);
    window.open(
      "https://www.youtube.com/results?search_query=" + youtube_search_value,
      '_blank'
    );