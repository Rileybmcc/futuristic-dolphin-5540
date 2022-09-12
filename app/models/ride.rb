class Ride < ApplicationRecord
  belongs_to :amusement_park

  scope :ordered, -> {order(thrill_rating: :desc)}
end
