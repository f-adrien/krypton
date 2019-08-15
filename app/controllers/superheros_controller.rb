class SuperherosController < ApplicationController
  before_action :set_superhero, only: [:show]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @superheros = Superhero.all
  end

  def show
    @booking = Booking.new
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
