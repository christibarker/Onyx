require 'test_helper'

class ShowSeatingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get show_seating_index_url
    assert_response :success
  end

  test "should get new" do
    get show_seating_new_url
    assert_response :success
  end

  test "should get create" do
    get show_seating_create_url
    assert_response :success
  end

  test "should get edit" do
    get show_seating_edit_url
    assert_response :success
  end

  test "should get update" do
    get show_seating_update_url
    assert_response :success
  end

  test "should get destroy" do
    get show_seating_destroy_url
    assert_response :success
  end

end
