require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get mail_send" do
    get :mail_send
    assert_response :success
  end

end
