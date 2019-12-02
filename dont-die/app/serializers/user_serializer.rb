class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :plants, :species
  has_many :plants
  has_many :species, through: :plants
end
