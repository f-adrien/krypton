class SuperherosController < ApplicationController
  before_action :set_superhero, only: [:show]

  def index
    if params[:location].present?
      @superheros_coordinates = Superhero.geocoded
      @markers = @superheros_coordinates.map do |superhero|
        {
          lat: superhero.latitude,
          lng: superhero.longitude
        }
      end
    else
      @superheros = Superhero.all
    end
  end

  def show
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    @superhero.user = current_user
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
    end
  end

  def set_superhero
    @superhero = Superhero.find(params[:id])
  end

  def superhero_params
    params.require(:superhero).permit(:name, :superpower, :location, :price_per_day, :photo)
  end
end
