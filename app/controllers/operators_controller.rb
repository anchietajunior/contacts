class OperatorsController < ApplicationController
  before_action :set_operator, only: [:show, :update, :destroy]

  # GET /operators
  # GET /operators.json
  def index
    @operators = Operator.all

    render json: @operators
  end

  # GET /operators/1
  # GET /operators/1.json
  def show
    render json: @operator
  end

  # POST /operators
  # POST /operators.json
  def create
    @operator = Operator.new(operator_params)

    if @operator.save
      render json: @operator, status: :created, location: @operator
    else
      render json: @operator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /operators/1
  # PATCH/PUT /operators/1.json
  def update
    @operator = Operator.find(params[:id])

    if @operator.update(operator_params)
      head :no_content
    else
      render json: @operator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /operators/1
  # DELETE /operators/1.json
  def destroy
    @operator.destroy

    head :no_content
  end

  private

    def set_operator
      @operator = Operator.find(params[:id])
    end

    def operator_params
      params.require(:operator).permit(:nome, :codigo, :categoria, :preco)
    end
end
