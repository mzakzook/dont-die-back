class Plant < ApplicationRecord
  belongs_to :species
  belongs_to :user

  def self.by_user_id(id)
    plants = Plant.select{|p| p.user.id == id.to_i}
    plants.sort_by {|plant| plant.updated_at }.reverse
  end

  
end
