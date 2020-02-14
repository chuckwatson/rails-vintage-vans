class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates_presence_of :first_name, :last_name
  has_many :bookings, dependent: :destroy
  has_many :campervans
  has_many :reviews
  has_one_attached :avatar
end
