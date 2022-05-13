require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "Invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: " ", email: "invalid", password: "short", password_confirmation: "diff"}}
    end

    assert_template 'users/new'
  end

  test "Valid signup information" do
    get signup_path
    assert_difference "User.count", 1 do
      post users_path, params: { user: { name: "alan", email: "alan@test.net", password: "MyPassword", password_confirmation: "MyPassword"}}
    end
    follow_redirect!
    assert_template 'users/show'
    assert is_logged_in?
  end
end
