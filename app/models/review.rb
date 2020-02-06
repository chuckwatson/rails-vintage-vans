class Review < ApplicationRecord
  belongs_to :bookings
  validates :description, presence: true
  validates :rating, presence: true
end
