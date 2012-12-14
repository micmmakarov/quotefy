require 'test_helper'

class DecriptionsControllerTest < ActionController::TestCase
  setup do
    @decription = decriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:decriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create decription" do
    assert_difference('Decription.count') do
      post :create, decription: { quote_id: @decription.quote_id, text: @decription.text, user_id: @decription.user_id }
    end

    assert_redirected_to decription_path(assigns(:decription))
  end

  test "should show decription" do
    get :show, id: @decription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @decription
    assert_response :success
  end

  test "should update decription" do
    put :update, id: @decription, decription: { quote_id: @decription.quote_id, text: @decription.text, user_id: @decription.user_id }
    assert_redirected_to decription_path(assigns(:decription))
  end

  test "should destroy decription" do
    assert_difference('Decription.count', -1) do
      delete :destroy, id: @decription
    end

    assert_redirected_to decriptions_path
  end
end
