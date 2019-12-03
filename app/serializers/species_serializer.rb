class SpeciesSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description
  has_many :plants
  has_many :users, through: :plants
  
end
