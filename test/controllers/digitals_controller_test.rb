require 'test_helper'

class DigitalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get digitals_index_url
    assert_response :success
  end

  test "should get new_register" do
    get digitals_new_register_url
    assert_response :success
  end

  test "should get manager_register" do
    get digitals_manager_register_url
    assert_response :success
  end

end
