class ArtistsController < ApplicationController

#adding render to boss
  def show
    @artist = Artist.find(params[:id])
    @song = Song.new
    render json: @artist if params[:format] == "json"
    end

  def index
      @artists = Artist.all

    end

  end
