require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest

  test "that /sign_in route opens the sign in page" do
    get '/sign_in'
    assert_response :success
  end

  test "that /sign_out route opens the sign out page" do
    delete '/sign_out'
    assert_response :redirect
    assert_redirected_to '/'
  end

  test "that /register route opens the register page" do
    get '/register'
    assert_response :success
  end

  test "that a profile page works" do
    get '/Tester1'
    assert_response :success
  end
end
