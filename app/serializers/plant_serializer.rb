class PlantSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :dob, :species, :notes
  belongs_to :user
  belongs_to :species
end
