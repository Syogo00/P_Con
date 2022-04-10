require "test_helper"

class Staff::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get staff_homes_start_url
    assert_response :success
  end
end
