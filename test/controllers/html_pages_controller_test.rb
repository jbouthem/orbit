require "test_helper"

class HtmlPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | Orbit feedback application"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Orbit feedback application"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Orbit feedback application"
  end

  test "should get contact page" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Orbit feedback application"
  end
end
