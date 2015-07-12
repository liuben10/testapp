require 'test_helper'

class QuestsControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
    @quest = quests(:one)
  end

  test "should get index" do
    get :index, user_id: @user.id
    assert_response :success
    assert_not_nil assigns(:quests)
  end

  test "should get new" do
    get :new, user_id: @user.id
    assert_response :success
  end

  test "should create quest" do
    assert_difference('Quest.count') do
      post :create, user_id: @user.id, quest: { description: @quest.description, name: @quest.name, rating: @quest.rating, user_id: @quest.user_id }
    end
  end

  test "should show quest" do
    get :show, user_id: @user.id, id: @quest
    assert_response :success
  end

  test "should get edit" do
    get :edit, user_id: @user.id, id: @quest
    assert_response :success
  end

  test "should update quest" do
    patch :update, id: @quest, user_id: @user.id, quest: { description: @quest.description, name: @quest.name, rating: @quest.rating, user_id: @quest.user_id }
    #assert_redirected_to user_quests_path(assigns(:quest))
  end

  test "should destroy quest" do
    assert_difference('Quest.count', -1) do
      delete :destroy, user_id: @user.id, id: @quest
    end
    #assert_redirected_to user_quests_path
  end
end
