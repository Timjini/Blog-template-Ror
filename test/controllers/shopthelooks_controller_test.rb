require "test_helper"

class ShopthelooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopthelook = shopthelooks(:one)
  end

  test "should get index" do
    get shopthelooks_url
    assert_response :success
  end

  test "should get new" do
    get new_shopthelook_url
    assert_response :success
  end

  test "should create shopthelook" do
    assert_difference("Shopthelook.count") do
      post shopthelooks_url, params: { shopthelook: { description: @shopthelook.description, url: @shopthelook.url, url1: @shopthelook.url1, url2: @shopthelook.url2 } }
    end

    assert_redirected_to shopthelook_url(Shopthelook.last)
  end

  test "should show shopthelook" do
    get shopthelook_url(@shopthelook)
    assert_response :success
  end

  test "should get edit" do
    get edit_shopthelook_url(@shopthelook)
    assert_response :success
  end

  test "should update shopthelook" do
    patch shopthelook_url(@shopthelook), params: { shopthelook: { description: @shopthelook.description, url: @shopthelook.url, url1: @shopthelook.url1, url2: @shopthelook.url2 } }
    assert_redirected_to shopthelook_url(@shopthelook)
  end

  test "should destroy shopthelook" do
    assert_difference("Shopthelook.count", -1) do
      delete shopthelook_url(@shopthelook)
    end

    assert_redirected_to shopthelooks_url
  end
end
