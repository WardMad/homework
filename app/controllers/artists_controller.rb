class ArtistsController < ApplicationController

#adding render to boss
  def show
    @artist = Artist.find(params[:id])
    @song = Song.new
     render json: @artist if params[:format] == 'json'
    end

  def index
      @artists = Artist.all
      @songs = Song.new
    end

  def new
        # @song = Song.new
      end

      # GET /songs/1/edit
  def edit

    end

      # POST /songs
      # POST /songs.json
  def create
       @artist = Artist.new(artist_params)
    if @artist.save
    pictures_params.each do |picture|
      @artist.pictures.create(image_url: picture)
    end
    redirect_to new_artist_song_path(@artist), notice: "Artist created, you can now add a first song or do it later"
  else
    render :new
  end
 end



      # PATCH/PUT /songs/1
      # PATCH/PUT /songs/1.json
    def update
        respond_to do |format|
          if @song.update(song_params)
            format.html { redirect_to @song, notice: 'Song was successfully updated.' }
            format.json { render :show, status: :ok, location: @song }
          else
            format.html { render :edit }
            format.json { render json: @song.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /songs/1
      # DELETE /songs/1.json
    def destroy
        @song.destroy
        respond_to do |format|
          format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_song
          @song = Song.find(params[:id])
        end

        # Never trust parameters from the scary internet, only allow the white list through.
      def song_params
          params.require(:song).permit(:name, :created)
        end
  end
