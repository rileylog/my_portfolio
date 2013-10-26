require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase


  before do
    @message = build(:message)
    @email = ContactMailer.contact_us(@message).deliver
  end  

  it "is being delievered to the right email address"  do
    assert_equal @email.to.pop, "devpointester@gmail.com"  
  end

  it "is delivered from the senders email" do
    assert_equal @email.from.pop, @message.email
  end
  
  # it "is delivered with an appropriate subject"
  #   assert_equal @email.subject, "[my portfolio] #{@message.subject}"
  # end  
end    