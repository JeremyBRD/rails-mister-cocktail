class DosesController < ApplicationController
before_action :set_dose, only: [:show, :edit, :update, :destroy]

  def new
    @dose = Dose.new
    @cocktail = TODO
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
