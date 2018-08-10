class DosesController < ApplicationController

  # def index
  #   @doses = Dose.all
  # end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = Cocktail.find(params[:cocktail_id])
    @dose.save
    if @dose.save
      # redirect_to cocktail_path(@dose.cocktail)
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end

  def destroy
    # @dose = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    cocktail = @dose.cocktail
    @dose.destroy

    redirect_to cocktail_path(cocktail)
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
