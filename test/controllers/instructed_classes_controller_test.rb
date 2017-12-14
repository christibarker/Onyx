require 'test_helper'

class InstructedClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instructed_classes_index_url
    assert_response :success
  end

  test "should get new" do
    get instructed_classes_new_url
    assert_response :success
  end

  test "should get create" do
    get instructed_classes_create_url
    assert_response :success
  end

  test "should get show" do
    get instructed_classes_show_url
    assert_response :success
  end

  test "should get edit" do
    get instructed_classes_edit_url
    assert_response :success
  end

  test "should get update" do
    get instructed_classes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get instructed_classes_destroy_url
    assert_response :success
  end

end
