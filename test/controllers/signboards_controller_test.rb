require 'test_helper'

class SignboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get signboards_index_url
    assert_response :success
  end

  test "should get show" do
    get signboards_show_url
    assert_response :success
  end

  test "should get new" do
    get signboards_new_url
    assert_response :success
  end

  test "should get edit" do
    get signboards_edit_url
    assert_response :success
  end

end
