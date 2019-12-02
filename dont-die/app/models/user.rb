class User < ApplicationRecord
  has_many :plants
  has_many :species, through: :plants
  has_secure_password
end
