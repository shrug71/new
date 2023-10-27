require "test_helper"

class VehicleModule::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vehicle_module_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get vehicle_module_posts_show_url
    assert_response :success
  end

  test "should get create" do
    get vehicle_module_posts_create_url
    assert_response :success
  end

  test "should get update" do
    get vehicle_module_posts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get vehicle_module_posts_destroy_url
    assert_response :success
  end
end
