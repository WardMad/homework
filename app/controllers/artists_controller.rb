class ArtistsController < ApplicationController
def show
  @artist = Artist.find(params[:id])

  end

def index
    @artists = Artist.all

  end
  # def destroy
  #
  #   current_song = Song.find(params[:id])
  #   current_song.destroy
  #   redirect_to artist_path(currentt_artist), notice: "Song deleted"
  # end

end
