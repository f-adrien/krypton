class PagesController < ApplicationController
  def home
    @superheros = Superhero.all
    raise
  end
end
