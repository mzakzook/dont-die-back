class Api::V1::PlantsController < ApplicationController
  
  def index
    if params[:my_plants]
      plants = Plant.by_user_id(params[:my_plants])
      render json: PlantSerializer.new(plants)
    else
      plants = Plant.all
      render json: PlantSerializer.new(plants)
    end
  end

  def create
    plant = Plant.create(plant_params)
    render json: plant
  end

  def show
    plant = Plant.find(params[:id])
    render json: plant
  end


  def update
    plant = Plant.find(params[:id])
		plant.update(plant_params)
		render json: plant
  end

  def destroy
		plant = Plant.find(params[:id])
		plant.destroy
		render json: { message: "Sorry to hear of your loss 💀💔" }
  end
  
  private

  def plant_params
    params.require(:plant).permit(:name, :dob, :user_id, :species_id, :notes)
  end

end
