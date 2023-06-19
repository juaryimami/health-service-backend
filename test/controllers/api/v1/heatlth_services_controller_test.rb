require "test_helper"

class Api::V1::HeatlthServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_heatlth_service = api_v1_heatlth_services(:one)
  end

  test "should get index" do
    get api_v1_heatlth_services_url, as: :json
    assert_response :success
  end

  test "should create api_v1_heatlth_service" do
    assert_difference("Api::V1::HeatlthService.count") do
      post api_v1_heatlth_services_url, params: { api_v1_heatlth_service: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_heatlth_service" do
    get api_v1_heatlth_service_url(@api_v1_heatlth_service), as: :json
    assert_response :success
  end

  test "should update api_v1_heatlth_service" do
    patch api_v1_heatlth_service_url(@api_v1_heatlth_service), params: { api_v1_heatlth_service: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_heatlth_service" do
    assert_difference("Api::V1::HeatlthService.count", -1) do
      delete api_v1_heatlth_service_url(@api_v1_heatlth_service), as: :json
    end

    assert_response :no_content
  end
end
