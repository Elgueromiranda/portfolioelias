class Api::V1::ContactsController < ApplicationController
  def home
    contact = Contact.all
    render json: contact
  end

  def create

    @contact = Contact.create(
      first_name: message_params["first_name"],
      last_name: message_params["last_name"],
      email: message_params["email"],
      message: message_params["message"],



      )
    if @contact.valid?
  contact = PostmarkMailer.with(message_params).send_email
  contact.deliver_now
      redirect_to root_path, :notice => "Message sent"
    else
       redirect_to home_contact_path, :notice => "Failed to send message"

    end
    
  end
  def message_params
    params.require(:contact).permit(:first_name, :last_name, :email, :message)
  end
end
