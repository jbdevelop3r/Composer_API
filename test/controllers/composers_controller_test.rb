require "test_helper"

class ComposersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @composer = composers(:one)
  end

  test "should get index" do
    get composers_url, as: :json
    assert_response :success
  end

  test "should create composer" do
    assert_difference("Composer.count") do
      post composers_url, params: { composer: { name: @composer.name } }, as: :json
    end

    assert_response :created
  end

  test "should show composer" do
    get composer_url(@composer), as: :json
    assert_response :success
  end

  test "should update composer" do
    patch composer_url(@composer), params: { composer: { name: @composer.name } }, as: :json
    assert_response :success
  end

  test "should destroy composer" do
    assert_difference("Composer.count", -1) do
      delete composer_url(@composer), as: :json
    end

    assert_response :no_content
  end
end
