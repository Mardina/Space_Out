class Room < ApplicationRecord
<<<<<<< HEAD
  belongs_to :booking_id
  belongs_to :user_id
=======
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, length: { maximum: 25 }, presence: true
  validates :address, presence: true
  validates :description, length: { maximum: 500 }, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :availability_start, presence: true, timeliness: { type: :datetime }
  validates :availability_end, presence: true, timeliness: { type: :datetime }
>>>>>>> master
end
