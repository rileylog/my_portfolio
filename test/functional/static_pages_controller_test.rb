require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about_me" do
    get :about_me
    assert_response :success
  end

  test "should get projects" do
    get :projects
    assert_response :success
  end

  test "should get contact_info" do
    get :contact_info
    assert_response :success
  end

end
