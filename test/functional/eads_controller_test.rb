require 'test_helper'

class EadsControllerTest < ActionController::TestCase
  setup do
    @ead = eads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ead" do
    assert_difference('Ead.count') do
      post :create, :ead => @ead.attributes
    end

    assert_redirected_to ead_path(assigns(:ead))
  end

  test "should show ead" do
    get :show, :id => @ead.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ead.to_param
    assert_response :success
  end

  test "should update ead" do
    put :update, :id => @ead.to_param, :ead => @ead.attributes
    assert_redirected_to ead_path(assigns(:ead))
  end

  test "should destroy ead" do
    assert_difference('Ead.count', -1) do
      delete :destroy, :id => @ead.to_param
    end

    assert_redirected_to eads_path
  end
end
