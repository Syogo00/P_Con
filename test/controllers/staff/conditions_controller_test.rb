require "test_helper"

class Staff::ConditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get staff_conditions_new_url
    assert_response :success
  end

  test "should get show" do
    get staff_conditions_show_url
    assert_response :success
  end

  test "should get edit" do
    get staff_conditions_edit_url
    assert_response :success
  end

  test "should get index" do
    get staff_conditions_index_url
    assert_response :success
  end

  test "should get graph" do
    get staff_conditions_graph_url
    assert_response :success
  end
end
