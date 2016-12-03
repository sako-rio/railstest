require 'test_helper'

class RichrdsControllerTest < ActionController::TestCase
  setup do
    @richrd = richrds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:richrds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create richrd" do
    assert_difference('Richrd.count') do
      post :create, richrd: {  }
    end

    assert_redirected_to richrd_path(assigns(:richrd))
  end

  test "should show richrd" do
    get :show, id: @richrd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @richrd
    assert_response :success
  end

  test "should update richrd" do
    patch :update, id: @richrd, richrd: {  }
    assert_redirected_to richrd_path(assigns(:richrd))
  end

  test "should destroy richrd" do
    assert_difference('Richrd.count', -1) do
      delete :destroy, id: @richrd
    end

    assert_redirected_to richrds_path
  end
end
