require 'test_helper'

class ContractAllocationsControllerTest < ActionController::TestCase
  setup do
    @contract_allocation = contract_allocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contract_allocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract_allocation" do
    assert_difference('ContractAllocation.count') do
      post :create, contract_allocation: { contract_id: @contract_allocation.contract_id, hours: @contract_allocation.hours, labor_category_id: @contract_allocation.labor_category_id, labor_rate: @contract_allocation.labor_rate }
    end

    assert_redirected_to contract_allocation_path(assigns(:contract_allocation))
  end

  test "should show contract_allocation" do
    get :show, id: @contract_allocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract_allocation
    assert_response :success
  end

  test "should update contract_allocation" do
    patch :update, id: @contract_allocation, contract_allocation: { contract_id: @contract_allocation.contract_id, hours: @contract_allocation.hours, labor_category_id: @contract_allocation.labor_category_id, labor_rate: @contract_allocation.labor_rate }
    assert_redirected_to contract_allocation_path(assigns(:contract_allocation))
  end

  test "should destroy contract_allocation" do
    assert_difference('ContractAllocation.count', -1) do
      delete :destroy, id: @contract_allocation
    end

    assert_redirected_to contract_allocations_path
  end
end
