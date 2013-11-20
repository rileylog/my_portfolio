require "test_helper"

class AdminsControllerTest < ActionController::TestCase

  def setup
    @admin = admins(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:admins)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Admin.count') do
      post :create, admin: {  }
    end

    assert_redirected_to admin_path(assigns(:admin))
  end

  def test_show
    get :show, id: @admin
    assert_response :success
  end

  def test_edit
    get :edit, id: @admin
    assert_response :success
  end

  def test_update
    put :update, id: @admin, admin: {  }
    assert_redirected_to admin_path(assigns(:admin))
  end

  def test_destroy
    assert_difference('Admin.count', -1) do
      delete :destroy, id: @admin
    end

    assert_redirected_to admins_path
  end
end
