require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reviews_index_url
    assert_response :success
  end

  test "should get manager_review" do
    get reviews_manager_review_url
    assert_response :success
  end

end
