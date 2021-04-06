require 'test_helper'

class ManifestationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manifestation = manifestations(:one)
  end

  test "should get index" do
    get manifestations_url, as: :json
    assert_response :success
  end

  test "should create manifestation" do
    assert_difference('Manifestation.count') do
      post manifestations_url, params: { manifestation: { description: @manifestation.description, url: @manifestation.url } }, as: :json
    end

    assert_response 201
  end

  test "should show manifestation" do
    get manifestation_url(@manifestation), as: :json
    assert_response :success
  end

  test "should update manifestation" do
    patch manifestation_url(@manifestation), params: { manifestation: { description: @manifestation.description, url: @manifestation.url } }, as: :json
    assert_response 200
  end

  test "should destroy manifestation" do
    assert_difference('Manifestation.count', -1) do
      delete manifestation_url(@manifestation), as: :json
    end

    assert_response 204
  end
end
