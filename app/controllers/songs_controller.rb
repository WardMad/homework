class SongsController < ApplicationController
  def show
    @artist=current_artist
    @song = current_song
    # @duration = @song.convert_to_time
  end
  def new
    @song = current_artist.songs.build
  end

  def create
    @song = current_artist.songs.build(song_params)

    if @song.save
      redirect_to artist_path(current_artist), notice: "Song created"
    else
      render :new
    end
end
    def destroy
      current_song = Song.find(params[:id])

      current_song.destroy


  end

  def edit
    @song = current_song
    @artist = current_artist
  end

  def update
    if current_song.update(song_params)
      redirect_to artist_path(current_artist), notice: "Song updated"
    else
      render :edit
    end
  end

  def destroy
    current_song = Song.find(params[:id])
    current_song.destroy
    redirect_to artist_path(current_artist), notice: "Song deleted"
  end

  private
  def current_song
    @song=Song.find(params[:id])
  end

  def current_artist
    @artist = Artist.find(params[:artist_id])
  end

  def song_params
    params
    .require(:song)
    .permit(:name, :length, :release_date)
  end

end
