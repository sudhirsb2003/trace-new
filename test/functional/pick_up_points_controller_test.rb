require 'test_helper'

class PickUpPointsControllerTest < ActionController::TestCase
  setup do
    @pick_up_point = pick_up_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pick_up_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pick_up_point" do
    assert_difference('PickUpPoint.count') do
      post :create, pick_up_point: { address: @pick_up_point.address, name: @pick_up_point.name }
    end

    assert_redirected_to pick_up_point_path(assigns(:pick_up_point))
  end

  test "should show pick_up_point" do
    get :show, id: @pick_up_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pick_up_point
    assert_response :success
  end

  test "should update pick_up_point" do
    put :update, id: @pick_up_point, pick_up_point: { address: @pick_up_point.address, name: @pick_up_point.name }
    assert_redirected_to pick_up_point_path(assigns(:pick_up_point))
  end

  test "should destroy pick_up_point" do
    assert_difference('PickUpPoint.count', -1) do
      delete :destroy, id: @pick_up_point
    end

    assert_redirected_to pick_up_points_path
  end
end
