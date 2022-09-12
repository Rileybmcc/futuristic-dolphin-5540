class Mechanic < ApplicationRecord
  validates :name, presence: true
  validates :experience, presence: true

  has_many :rides, through: :ride_mechanics

  
end
