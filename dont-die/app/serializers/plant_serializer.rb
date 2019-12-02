class PlantSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :user, :species, :notes
  belongs_to :user
  belongs_to :species
end
