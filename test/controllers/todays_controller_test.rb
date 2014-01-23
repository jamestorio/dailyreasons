require 'test_helper'

class TodaysControllerTest < ActionController::TestCase
  setup do
    @today = todays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create today" do
    assert_difference('Today.count') do
      post :create, today: { Reason_to_celebrate: @today.Reason_to_celebrate, date: @today.date }
    end

    assert_redirected_to today_path(assigns(:today))
  end

  test "should show today" do
    get :show, id: @today
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @today
    assert_response :success
  end

  test "should update today" do
    patch :update, id: @today, today: { Reason_to_celebrate: @today.Reason_to_celebrate, date: @today.date }
    assert_redirected_to today_path(assigns(:today))
  end

  test "should destroy today" do
    assert_difference('Today.count', -1) do
      delete :destroy, id: @today
    end

    assert_redirected_to todays_path
  end
end
