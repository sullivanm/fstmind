require 'test_helper'

class StaticPageControllerTest < ActionController::TestCase
  test "should get posts" do
    get :posts
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get questions" do
    get :questions
    assert_response :success
  end

end
