require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homes_index_url
    assert_response :success
  end

  test "should get new" do
    get homes_new_url
    assert_response :success
  end

  test "should get home" do
    get homes_home_url
    assert_response :success
  end

  test "should get show" do
    get homes_show_url
    assert_response :success
  end

end
