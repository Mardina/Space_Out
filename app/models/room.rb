class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, length: { maximum: 25 }, presence: true
  validates :address, presence: true
  validates :description, length: { maximum: 500 }, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :availability_start, presence: true
  validates :availability_end, presence: true
end
