require "test_helper"

class Staff::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get staff_home_top_url
    assert_response :success
  end

  test "should get edit" do
    get staff_home_edit_url
    assert_response :success
  end
end
