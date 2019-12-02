class SpeciesController < ApplicationController
  def index 
    species = Species.all
    render json: SpeciesSerializer.new(species)
  end

end
