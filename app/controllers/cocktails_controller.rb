class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all #get an array
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end
end
