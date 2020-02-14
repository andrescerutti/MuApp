class OperationsController < ApplicationController
  before_action :set_operation, only: [:show, :edit, :update, :destroy]

  def index
    @operations = Operation.all
  end

  def show
  end

  def new
    @operation = Operation.new
  end

  def create
    Operation.create(operation_params)
    redirect_to operations_path
  end

  def edit
  end

  def update
    @operation.update(operation_params)
    redirect_to operations_path(@operation)
  end

  def destroy
    @operation.destroy
    redirect_to operations_path
  end

  private

  def operation_params
    params.require(:operation).permit(:nota)
  end

  def set_operation
    @operation = Operation.find(params[:id])
  end
end
