class SongsController < ApplicationController
  def show
    @artist=current_artist
    @song = current_song
    render json: @song if params[:format] == 'json'
  end
  def new
    @song = current_artist.songs.build
  end

  def create
    @song = current_artist.songs.build(song_params)
    # jsonform, songs_path
    respond_to do |format|
    if @song.save
     format.html { redirect_to artist_path(current_artist), notice: "! created" }
    format.json {render json: {song: @song, status: :created }}
  else

        format.json {render json: @song.errors, status: :unprocessable_entity }
      end
    end
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
    respond_to do |format|
    format.json { render json: {song: @song, status: :deleted}}
  end
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
