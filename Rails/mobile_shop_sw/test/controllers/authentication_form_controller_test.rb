require "test_helper"

class AuthenticationFormControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get authentication_form_home_url
    assert_response :success
  end
end
