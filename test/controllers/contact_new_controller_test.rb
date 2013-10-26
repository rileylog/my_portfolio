# require "test_helper"

# class ContactNewControllerTest < ActionController::TestCase

#   test "displays the new contact us page correctly" do
#     get :new
#     assert_response :success
#     assert_template :new
#   end

#   test "sends a contact email and redirects to the home page and displays a notice" do
#     message_attributes = attributes_for(:message)
#     post :create, message: attributes_for(:message)
#     # Test that the email is acutally being sent
#     assert_equal ActionMailer::Base.deliveries.last.from.pop, message_attributes
#     # ContactMailer.contact_us(@message).deliver
#     assert_response :redirect
#     assert_redirected_to root_path
#     assert flash[:notice].present?
#   end
  
#   test "doesn't send a message and renders the new template for invalid messages" do
#     post :create, message: attributes_for(:message, email: nil)
#     assert_response :success
#     assert_template :new
#   end  
# end    