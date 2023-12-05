require "test_helper"

class PracticeControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get practice_page_url
    assert_response :success
  end
end
