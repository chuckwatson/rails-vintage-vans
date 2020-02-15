class Review < ApplicationRecord
  belongs_to :campervan, dependent: :destroy
  belongs_to :user
  validates :description, presence: true
  validates :rating, presence: true
end
