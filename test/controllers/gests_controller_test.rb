require "test_helper"

class GestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gests_new_url
    assert_response :success
  end

  test "should get create" do
    get gests_create_url
    assert_response :success
  end

  test "should get index" do
    get gests_index_url
    assert_response :success
  end

  test "should get show" do
    get gests_show_url
    assert_response :success
  end

  test "should get edit" do
    get gests_edit_url
    assert_response :success
  end

  test "should get update" do
    get gests_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gests_destroy_url
    assert_response :success
  end
end
