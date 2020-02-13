class Campervan < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews
  validates :title, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :price, presence: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

<<<<<<< HEAD

=======
  include AlgoliaSearch
  algoliasearch do
    attributes :title, :description, :is_public => true
  end
  after_save :load_algolia
  private
  def load_algolia
    index = Algolia::index.new('VINTAGE-VANS')
    index.add_object(self)
  end
>>>>>>> master

end
