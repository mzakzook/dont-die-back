class Api::V1::SpeciesController < ApplicationController
  def index 
    species = Species.all
    render json: SpeciesSerializer.new(species)
  end

end
