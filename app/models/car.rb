class Car < ApplicationRecord
  belongs_to :customer
  has_many :jobs
end
