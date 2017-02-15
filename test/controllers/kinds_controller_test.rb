require 'test_helper'

class KindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kind = kinds(:one)
  end

  test "should get index" do
    get kinds_url, as: :json
    assert_response :success
  end

  test "should create kind" do
    assert_difference('Kind.count') do
      post kinds_url, params: { kind: { description: @kind.description } }, as: :json
    end

    assert_response 201
  end

  test "should show kind" do
    get kind_url(@kind), as: :json
    assert_response :success
  end

  test "should update kind" do
    patch kind_url(@kind), params: { kind: { description: @kind.description } }, as: :json
    assert_response 200
  end

  test "should destroy kind" do
    assert_difference('Kind.count', -1) do
      delete kind_url(@kind), as: :json
    end

    assert_response 204
  end
end
