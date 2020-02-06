class Review < ApplicationRecord
  belongs_to :user, through: :bookings
  validates :description, presence: true
  validates :rating, presence: true
end
