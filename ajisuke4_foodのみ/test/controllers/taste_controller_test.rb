require 'test_helper'

class TasteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get taste_index_url
    assert_response :success
  end

  test "should get show" do
    get taste_show_url
    assert_response :success
  end

  test "should get new" do
    get taste_new_url
    assert_response :success
  end

  test "should get edit" do
    get taste_edit_url
    assert_response :success
  end

end
