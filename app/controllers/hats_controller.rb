class HatsController < ApplicationController
  def index
    @hats = Hat.all
  end

  def new
    @hat = Hat.new
  end

  def show
  end

  def create
    hat_params = params.require(:hat).permit(:name, :description)
    @hat = Hat.new(hat_params)
    @hat.save
    redirect_to hats_path
  end

  def edit
    @hat = Hat.find_by_id(params[:id])
  end

  def update
    hat = Hat.find_by_id(params[:id])
    hat = params.require(:hat).permit(:name, :description)
    if hat.update(hat)
      redirect_to hats_path
    else
      redirect_to edit_hat_path(hat)
    end
  end

  def destroy
    
  end
end
