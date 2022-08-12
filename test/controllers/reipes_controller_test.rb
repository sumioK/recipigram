require 'test_helper'

class ReipesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reipes_index_url
    assert_response :success
  end

  test "should get show" do
    get reipes_show_url
    assert_response :success
  end

  test "should get new" do
    get reipes_new_url
    assert_response :success
  end

  test "should get edit" do
    get reipes_edit_url
    assert_response :success
  end

end
