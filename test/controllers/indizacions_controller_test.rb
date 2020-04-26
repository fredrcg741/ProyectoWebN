require 'test_helper'

class IndizacionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get indizacions_index_url
    assert_response :success
  end

  test "should get new_deskpart" do
    get indizacions_new_deskpart_url
    assert_response :success
  end

  test "should get manager_deskpart" do
    get indizacions_manager_deskpart_url
    assert_response :success
  end

  test "should get new_actdirect" do
    get indizacions_new_actdirect_url
    assert_response :success
  end

  test "should get manager_actdirect" do
    get indizacions_manager_actdirect_url
    assert_response :success
  end

end
