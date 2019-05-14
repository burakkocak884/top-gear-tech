require 'test_helper'

class GarageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get garage_index_url
    assert_response :success
  end

  test "should get show" do
    get garage_show_url
    assert_response :success
  end

  test "should get new" do
    get garage_new_url
    assert_response :success
  end

  test "should get create" do
    get garage_create_url
    assert_response :success
  end

  test "should get edit" do
    get garage_edit_url
    assert_response :success
  end

  test "should get update" do
    get garage_update_url
    assert_response :success
  end

end
