class ContactMailer < ActionMailer::Base
  layout 'email'

  def contact_us(message)
    @message = message
      mail(to: "devpointester@gmail.com", from: @message.email, subject: "[my portfolio #{@message.subject}")
  end
end
