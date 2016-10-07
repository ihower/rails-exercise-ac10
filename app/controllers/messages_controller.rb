class MessagesController < ApplicationController

  def index
    @messages = Message.order("id DESC").all
  end

  def create
    @message = Message.new( message_params )
    if @message.save

      html = ApplicationController.renderer.render( :partial => "messages/message", :locals => { :message => @message } )

      ActionCable.server.broadcast "public_channel", { :html => html }

      render :nothing => true
    else
      render :index
    end
  end

  protected

  def message_params
    params.require(:message).permit(:content)
  end

end
