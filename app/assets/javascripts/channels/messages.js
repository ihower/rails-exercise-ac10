App.messages = App.cable.subscriptions.create("MessagesChannel", {
  connected: function() {
    console.log("connected!")
  },
  disconnected: function() {
    console.log("disconnected!")
  },
  received: function(data) {
    console.log("received!")
    $("#message_content").val("")
    $("#message-list").prepend(data.html)
  }
});
