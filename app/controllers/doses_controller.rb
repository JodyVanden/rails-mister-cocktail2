class DosesController < ApplicationController

  def show
    @dose = Dose.find(id: params[:id], cocktail_id: params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private
    def dose_params
      # *Strong params*: You need to *whitelist* what can be updated by the user
      # Never trust user data!
      params.require(:dose).permit(:description, :ingredient_id, :ingredient)
    end
end
