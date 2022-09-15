require "test_helper"

class MissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get missions_create_url
    assert_response :success
  end

  test "should get index" do
    get missions_index_url
    assert_response :success
  end

  test "should get show" do
    get missions_show_url
    assert_response :success
  end

  test "should get update" do
    get missions_update_url
    assert_response :success
  end

  test "should get delete" do
    get missions_delete_url
    assert_response :success
  end
end
