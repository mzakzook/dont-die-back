class SpeciesSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :img_url
  has_many :plants
  has_many :users, through: :plants
  
end
