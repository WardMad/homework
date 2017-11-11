class SongsController < ApplicationController
  def show
     @songs= Song.find(params[:id])
   end

  def index
    @songs = artist.songs
  end


  def new
    @song = artist.songs.build
  end

  def create
    @song = artist.songs.build(song_params)

    if @song.save
      redirect_to @song, notice: "Song created"
    else
      render :new
    end
  end



  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song)
      # .permit(
      #   :home_type, :room_type, :accommodate, :bedroom_count, :bathroom_count, :listing_name,
      #   :description, :address, :has_tv, :has_kitchen, :has_airco, :has_heating, :has_internet,
      #   :price, :active
      # )
  end
end
