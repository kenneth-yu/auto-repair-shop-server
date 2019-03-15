class Customer < ApplicationRecord
  has_many :cars
  has_many :jobs, through: :cars
end
