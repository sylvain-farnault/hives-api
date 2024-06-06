require "test_helper"

class Api::V1::HivesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_hives_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_hives_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_hives_create_url
    assert_response :success
  end
end
