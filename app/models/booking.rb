class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :booking_start, presence: true, timeliness: { type: :datetime }
  validates :booking_end, presence: true, timeliness: { type: :datetime }
end
