class MessagesController < ApplicationController

  def create
    message = Message.new()
    message.email = params[:email]
    message.subject = params[:subject]
    message.body = params[:body]

    if Notifier.contact(message).deliver
      Notifier.contact_reply(message).deliver
      render json: {
        message: "Thank you, #{message.email}. We'll be in touch soon.",
        valid: true
      }
    else
      render json: {
        message: "Sorry, there was an error sending your message. Please try again later.",
        valid: false
      }
    end
  end
end