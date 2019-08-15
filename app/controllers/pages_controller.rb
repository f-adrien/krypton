class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @superheros = Superhero.all
  end
end
