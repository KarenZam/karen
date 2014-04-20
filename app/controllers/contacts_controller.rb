class ContactsController < ApplicationController

  def create
    begin
      Notifier.contact(contact_params).deliver
      Notifier.contact_reply(contact_params).deliver
      render json: {
        contact: "Both mail delivered",
        valid: true
      }
    rescue
      begin
        Notifier.contact_reply_error(contact_params).deliver
      end
      render json: {
        contact: "There has been an error",
        valid: false
      }
    end
  end

  private

  def contact_params
    params.permit( :email, :subject, :body )
  end
end
