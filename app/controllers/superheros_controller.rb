class SuperherosController < ApplicationController
  before_action :set_supehero, only: [:show]

  def index
    @superheros = Superhero.all
  end

  def show
  end

  def new
    @superhero = Superhero.new
  end

  def create
    @superhero = Superhero.new(superhero_params)
    if @superhero.save
      redirect_to superhero_path(@superhero)
    else
      render :new
  end

  def set_supehero
    @superhero = Superhero.find(params[:id])
  end

  def superhero_params
    params.require(:superhero).permit(:name, :superpower, :location, :price_per_day)
  end
end
