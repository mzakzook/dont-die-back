class UserSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :username, :plants, :species
  has_many :plants
  has_many :species, through: :plants
end
