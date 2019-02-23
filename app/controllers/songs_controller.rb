class SongsController < ApplicationController
  before_action :set_billboard
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = @billboard.songs
  end

  def show
  end

  def new
    @song = @billboard.songs.new
  end

  def edit
  end

  def create
    @song = @billboard.songs.new(song_params)

    if @song.save
      redirect_to [@billboard, @song]
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to [@billboard, @song]
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    redirect_to billboard_songs_path
  end

  private
    def set_billboard
      @billboard = Billboard.find(params[:billboard_id])
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title, :artist)
    end
end
 
  
  