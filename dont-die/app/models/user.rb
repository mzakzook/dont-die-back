class User < ApplicationRecord
  has_many :plants
  has_secure_password
end
