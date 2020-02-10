class Review < ApplicationRecord
  belongs_to :campervan
  belongs_to :user
  validates :description, presence: true
  validates :rating, presence: true
end
