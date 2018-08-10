class CocktailsController < ApplicationController
  # before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
      if @cocktail.save(cocktail_params)
        redirect_to cocktail_path(@cocktail)
      else
        render :new
      end

  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end


  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end

  # def edit
  #    end

  # def update
  #   @cocktail.update(restaurant_params)

  #   redirect_to restaurant_path(cocktail)
  # end

  # def destroy
  #   @cocktail.destroy

  #   redirect_to restaurants_path
  # end