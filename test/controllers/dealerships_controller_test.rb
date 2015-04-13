require 'test_helper'

class DealershipsControllerTest < ActionController::TestCase
  setup do
    @dealership = dealerships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealerships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealership" do
    assert_difference('Dealership.count') do
      post :create, dealership: { address: @dealership.address, city: @dealership.city, equipment_alley_account: @dealership.equipment_alley_account, phone: @dealership.phone, state: @dealership.state, zip: @dealership.zip }
    end

    assert_redirected_to dealership_path(assigns(:dealership))
  end

  test "should show dealership" do
    get :show, id: @dealership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealership
    assert_response :success
  end

  test "should update dealership" do
    patch :update, id: @dealership, dealership: { address: @dealership.address, city: @dealership.city, equipment_alley_account: @dealership.equipment_alley_account, phone: @dealership.phone, state: @dealership.state, zip: @dealership.zip }
    assert_redirected_to dealership_path(assigns(:dealership))
  end

  test "should destroy dealership" do
    assert_difference('Dealership.count', -1) do
      delete :destroy, id: @dealership
    end

    assert_redirected_to dealerships_path
  end
end
