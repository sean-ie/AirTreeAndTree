class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :tree

  validates :user, presence: true
  validates :tree, presence: true
end
