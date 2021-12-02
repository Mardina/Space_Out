class Room < ApplicationRecord
  belongs_to :booking_id
  belongs_to :user_id
end
