class BboardsController < ApplicationController
  before_action :set_bboard, only: [:show, :edit, :update, :destroy]

  def index
    @bboards = Bboard.all
  end

  def show
  end

  def new
    @bboard = Bboard.new
  end

  def edit
  end

  def create
    @bboard = Bboard.new(bboard_params)
    
    if @bboard.save
      redirect_to bboards_path
    else
      render :new
    end
  end

  def update
    if @bboard.update(bboard_params)
      redirect_to @bboard
    else
      render :edit
    end
  end

  def destroy
    @bboard.destroy
    redirect_to bboards_path
  end

  private

  def set_bboard
    @bboard = Bboard.find(params[:id])
  end

  def bboard_params
    params.require(:bboard).permit(:name, :genre)
  end
end

