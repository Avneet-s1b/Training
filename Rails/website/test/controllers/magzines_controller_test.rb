require "test_helper"

class MagzinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @magzine = magzines(:one)
  end

  test "should get index" do
    get magzines_url
    assert_response :success
  end

  test "should get new" do
    get new_magzine_url
    assert_response :success
  end

  test "should create magzine" do
    assert_difference("Magzine.count") do
      post magzines_url, params: { magzine: { name: @magzine.name } }
    end

    assert_redirected_to magzine_url(Magzine.last)
  end

  test "should show magzine" do
    get magzine_url(@magzine)
    assert_response :success
  end

  test "should get edit" do
    get edit_magzine_url(@magzine)
    assert_response :success
  end

  test "should update magzine" do
    patch magzine_url(@magzine), params: { magzine: { name: @magzine.name } }
    assert_redirected_to magzine_url(@magzine)
  end

  test "should destroy magzine" do
    assert_difference("Magzine.count", -1) do
      delete magzine_url(@magzine)
    end

    assert_redirected_to magzines_url
  end
end
