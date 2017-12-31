class Dashing.Notification extends Dashing.Widget

  ready: ->
    # This is fired when the widget is done being rendered

  onData: (data) ->
    # Handle incoming data
    # You can access the html node of this widget with `@node`
    # Example: $(@node).fadeOut().fadeIn() will make the node flash each time data comes in.

  redirect: ->
    notification_text = $(@node).find("#notification-text").val()
    console.log("notification text: " + notification_text)
    win = window.open(
      "",
      '_blank'
    );

    win.document.body.style.background = "#2d90a5";
    win.document.body.style.fontFamily = '"Montserrat",sans-serif';
    win.document.body.style.fontSize = "100";
    win.document.body.style.color = "#fff";
    win.document.body.innerHTML = notification_text;
