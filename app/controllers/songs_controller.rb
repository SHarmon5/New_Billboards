class SongsController < ApplicationController
  before_action :set_bboard, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @song = @artist.songs
  end

  def show
  end

  def new
    
    @song = @artist.songs.new
    
  end

  def edit
    
  end

  def create
    @song = @artist.songs.new(song_params)
    
    if @song.save
      redirect_to [@artist, @song]
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to [@artist, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_songs_path(@artist)
  end

  private
  def set_bboard
    @bboards = Bboard.all
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :album, :time, :video, :bboard_id)
  end
end