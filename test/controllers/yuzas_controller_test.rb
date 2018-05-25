require 'test_helper'

class YuzasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get yuzas_show_url
    assert_response :success
  end

  test "should get edit" do
    get yuzas_edit_url
    assert_response :success
  end

end
