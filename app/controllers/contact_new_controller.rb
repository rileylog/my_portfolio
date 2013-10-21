class ContactNewController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      ContactMailer.contact_us(@message).deliver
      redirect_to root_path, notice: "Thanks for contacting us, we'll get backt to you"
    else
      flash.now.alert = "please correct the errors"  
      render :new
    end
  end
end
