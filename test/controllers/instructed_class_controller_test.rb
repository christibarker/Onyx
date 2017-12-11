require 'test_helper'

class InstructedClassControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instructed_class_index_url
    assert_response :success
  end

  test "should get new" do
    get instructed_class_new_url
    assert_response :success
  end

  test "should get create" do
    get instructed_class_create_url
    assert_response :success
  end

  test "should get show" do
    get instructed_class_show_url
    assert_response :success
  end

  test "should get edit" do
    get instructed_class_edit_url
    assert_response :success
  end

  test "should get update" do
    get instructed_class_update_url
    assert_response :success
  end

  test "should get destroy" do
    get instructed_class_destroy_url
    assert_response :success
  end

end
