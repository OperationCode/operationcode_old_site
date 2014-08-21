require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get donate" do
    get :donate
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contributors" do
    get :contributors
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

end
