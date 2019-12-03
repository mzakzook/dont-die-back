class User < ApplicationRecord
  has_many :plants
  has_many :species, through: :plants
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
