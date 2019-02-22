require 'test_helper'

class BboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bboards_index_url
    assert_response :success
  end

  test "should get show" do
    get bboards_show_url
    assert_response :success
  end

  test "should get new" do
    get bboards_new_url
    assert_response :success
  end

  test "should get edit" do
    get bboards_edit_url
    assert_response :success
  end

end
