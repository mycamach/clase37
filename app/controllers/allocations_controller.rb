class AllocationsController < ApplicationController
  def index
    @allocations = Allocation.all
  end

  def create
    allocation = Allocation.new(user_id: params[:user_id], project_id: params[:project_id] )
    if allocation.save
      redirect_to user_path(params[:user_id]), notice: 'Éxito'
    else
      redirect_to user_path(params[:user_id]), alert: 'No se ha podido asignar'
    end
  end

  def destroy
  end

  end
end
