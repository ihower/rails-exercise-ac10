# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.

class MessagesChannel < ApplicationCable::Channel

  def subscribed
    stream_from "public_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)    
    message = data.fetch('message')
    content = message["content"]

    @message = Message.new( :content => content )
    @message.save

    html = ApplicationController.renderer.render( :partial => "messages/message", :locals => { :message => @message } )
    ActionCable.server.broadcast "public_channel", { :html => html }
  end
end
