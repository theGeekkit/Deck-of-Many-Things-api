require "test_helper"

class DeckListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deck_list = deck_lists(:one)
  end

  test "should get index" do
    get deck_lists_url, as: :json
    assert_response :success
  end

  test "should create deck_list" do
    assert_difference("DeckList.count") do
      post deck_lists_url, params: { deck_list: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show deck_list" do
    get deck_list_url(@deck_list), as: :json
    assert_response :success
  end

  test "should update deck_list" do
    patch deck_list_url(@deck_list), params: { deck_list: {  } }, as: :json
    assert_response :success
  end

  test "should destroy deck_list" do
    assert_difference("DeckList.count", -1) do
      delete deck_list_url(@deck_list), as: :json
    end

    assert_response :no_content
  end
end
