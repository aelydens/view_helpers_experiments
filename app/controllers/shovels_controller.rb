class ShovelsController < ApplicationController
  
  def index
    @shovels= Shovels.all
  end

  def new
    @shovel = Shovel.new
  end

  def create
    @shovel = Shovel.new(shovel_params)
    if @shovel.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @shovel = Shovel.find(params[:id])
  end

  def edit
    @shovel = Shovel.find(params[:id])
  end

  def update
    @shovel = Shovel.find(params[:id])
    if @shovel.update(shovel_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @shovel = Shovel.find(params[:id])
    @shovel.destroy
    redirect_to root_path
  end
end
