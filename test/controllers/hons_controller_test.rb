require 'test_helper'

class HonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hons_index_url
    assert_response :success
  end

  test "should get show" do
    get hons_show_url
    assert_response :success
  end

  test "should get edit" do
    get hons_edit_url
    assert_response :success
  end

end
