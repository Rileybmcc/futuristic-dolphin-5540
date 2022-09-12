class Mechanic < ApplicationRecord
  validates :name, presence: true
  validates :experience, presence: true

  
end
