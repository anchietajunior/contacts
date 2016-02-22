require 'test_helper'

class OperatorsControllerTest < ActionController::TestCase
  setup do
    @operator = operators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operators)
  end

  test "should create operator" do
    assert_difference('Operator.count') do
      post :create, operator: { categoria: @operator.categoria, codigo: @operator.codigo, nome: @operator.nome, preco: @operator.preco }
    end

    assert_response 201
  end

  test "should show operator" do
    get :show, id: @operator
    assert_response :success
  end

  test "should update operator" do
    put :update, id: @operator, operator: { categoria: @operator.categoria, codigo: @operator.codigo, nome: @operator.nome, preco: @operator.preco }
    assert_response 204
  end

  test "should destroy operator" do
    assert_difference('Operator.count', -1) do
      delete :destroy, id: @operator
    end

    assert_response 204
  end
end
