require "test_helper"

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get strona/index" do
    get welcome_strona/index_url
    assert_response :success
  end
end
