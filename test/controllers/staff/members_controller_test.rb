require "test_helper"

class Staff::MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get staff_members_top_url
    assert_response :success
  end

  test "should get edit" do
    get staff_members_edit_url
    assert_response :success
  end

  test "should get show" do
    get staff_members_show_url
    assert_response :success
  end

  test "should get index" do
    get staff_members_index_url
    assert_response :success
  end
end
