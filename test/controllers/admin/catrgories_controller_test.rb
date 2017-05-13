require 'test_helper'

class Admin::CatrgoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_catrgories_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_catrgories_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_catrgories_edit_url
    assert_response :success
  end

end
