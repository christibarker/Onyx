require 'test_helper'

class GiftCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gift_cards_index_url
    assert_response :success
  end

  test "should get new" do
    get gift_cards_new_url
    assert_response :success
  end

  test "should get create" do
    get gift_cards_create_url
    assert_response :success
  end

  test "should get show" do
    get gift_cards_show_url
    assert_response :success
  end

  test "should get edit" do
    get gift_cards_edit_url
    assert_response :success
  end

  test "should get update" do
    get gift_cards_update_url
    assert_response :success
  end

  test "should get destroy" do
    get gift_cards_destroy_url
    assert_response :success
  end

end
