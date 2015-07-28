require 'test_helper'

class RendusControllerTest < ActionController::TestCase
  setup do
    @rendu = rendus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rendus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rendu" do
    assert_difference('Rendu.count') do
      post :create, rendu: { note: @rendu.note }
    end

    assert_redirected_to rendu_path(assigns(:rendu))
  end

  test "should show rendu" do
    get :show, id: @rendu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rendu
    assert_response :success
  end

  test "should update rendu" do
    patch :update, id: @rendu, rendu: { note: @rendu.note }
    assert_redirected_to rendu_path(assigns(:rendu))
  end

  test "should destroy rendu" do
    assert_difference('Rendu.count', -1) do
      delete :destroy, id: @rendu
    end

    assert_redirected_to rendus_path
  end
end
