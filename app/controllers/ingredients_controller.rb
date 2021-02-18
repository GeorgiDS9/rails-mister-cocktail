class DosesController < ApplicationController
  def create
    # handle in incoming HTTP request from the plant form
    # create the plant and associate it with the correct garden

    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end

    # if the validation fails, don't redirect. Rather, just re-render the form
    # with the errors of the plant
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
