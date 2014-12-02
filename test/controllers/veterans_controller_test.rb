require 'test_helper'

class VeteransControllerTest < ActionController::TestCase
  setup do
    @veteran = veterans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veteran" do
    assert_difference('Veteran.count') do
      post :create, veteran: {  }
    end

    assert_redirected_to veteran_path(assigns(:veteran))
  end

  test "should show veteran" do
    get :show, id: @veteran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veteran
    assert_response :success
  end

  test "should update veteran" do
    patch :update, id: @veteran, veteran: {  }
    assert_redirected_to veteran_path(assigns(:veteran))
  end

  test "should destroy veteran" do
    assert_difference('Veteran.count', -1) do
      delete :destroy, id: @veteran
    end

    assert_redirected_to veterans_path
  end
end
