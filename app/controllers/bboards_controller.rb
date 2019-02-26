class BboardsController < ApplicationController
  before_action :set_bboard, only: [:show, :edit, :destroy]

  def index
    @bboards = current_user.bboards
  end

  def show 
    @songs = @bboard.songs
  end

  def new
    @bboard = Bboard.new
  end

  def edit
  end

  def create
    @bboard = current_user.bboards.new(bboard_params)
    
    if @bboard.save
      flash[:success] = "Billboard Created"
      redirect_to bboards_path
    else
      flash[:error] = "Error #{@bboard.errors.full_messages.join("\n")}"
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
  def remove_song
     # remove the billboard_id so it is no longer associated
     Song.find(params[:song_id]).update(bboard_id: nil)
     redirect_to bboards_path
   end

  private

  def set_bboard
    @bboard = current_user.bboards.find(params[:id])
  end

  def bboard_params
    params.require(:bboard).permit(:name, :genre)
  end
end

