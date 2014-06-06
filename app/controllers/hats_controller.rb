class HatsController < ApplicationController
  def index
    @hats = Hat.all
  end

  def new
    @hat = Hat.new
  end

  def show
    @hat = Hat.find_by_id(params[:id])
  end

  def create
    # hat_params = params.require(:hat).permit(:name, :description)
    @hat = Hat.new(hat_params)
   if @hat.save
      redirect_to hats_path, notice: "Hat created!"
   else
    render :new
   end 
    
  end

  def edit
    #this id comes from the browser url 
    @hat = Hat.find_by_id(params[:id])
  end

  def update
    @hat = Hat.find(params[:id])
    # hat = params.require(:hat).permit(:name, :description)
    if @hat.update(hat_params)
      redirect_to hats_path
    else
      # redirect_to edit_hat_path(@hat)
      #rendering maintains error messages
      render :edit
    end
  end

  def destroy
    @hat = Hat.find(params[:id])
      @hat.destroy
      redirect_to root_path
  end

  def hat_params
    params.require(:hat).permit(:name, :description)
  end
end
