class ArtistsController < ApplicationController
  before_action :set_signboard
  before_action :set_artist, except: [:index, :new, :create]

  def index
    @artists = @signboard.artists.all
  end

  def show
  end

  def new
    @artist = @signboard.artists.new
  end

  def create
    @artist = @signboard.artists.new(artist_params)
    if @artist.save
      redirect_to signboard_artist_path(@signboard, @artist)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to signboard_artist_path(@signboard, @artist)
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to signboard_artists_path(@signboard)
  end

  private
    def artist_params
      params.require(:artist).permit(:name, :genre, :rating)
    end

    def set_artist
      @artist = @signboard.artists.find(params[:id])
    end

    def set_signboard
      @signboard = Signboard.find(params[:signboard_id])
    end
end
