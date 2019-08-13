class PagesController < ApplicationController
  def home
    @superheros = Superhero.all
  end
end
