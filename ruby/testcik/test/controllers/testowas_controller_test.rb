require 'test_helper'

class TestowasControllerTest < ActionController::TestCase
  setup do
    @testowa = testowas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testowas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testowa" do
    assert_difference('Testowa.count') do
      post :create, testowa: { age: @testowa.age, name: @testowa.name }
    end

    assert_redirected_to testowa_path(assigns(:testowa))
  end

  test "should show testowa" do
    get :show, id: @testowa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testowa
    assert_response :success
  end

  test "should update testowa" do
    patch :update, id: @testowa, testowa: { age: @testowa.age, name: @testowa.name }
    assert_redirected_to testowa_path(assigns(:testowa))
  end

  test "should destroy testowa" do
    assert_difference('Testowa.count', -1) do
      delete :destroy, id: @testowa
    end

    assert_redirected_to testowas_path
  end
end
