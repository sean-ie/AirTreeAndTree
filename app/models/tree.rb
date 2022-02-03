class Tree < ApplicationRecord
  validates :name, :description, :address, presence: true
  validates :price, presence: true, numericality: true
  validates :number_of_guests, presence: true, numericality: true
  has_many :bookings
  has_many :users, through: :bookings   
end
