require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test "should get rake" do
    get welcomes_rake_url
    assert_response :success
  end

  test "should get routes" do
    get welcomes_routes_url
    assert_response :success
  end

end
