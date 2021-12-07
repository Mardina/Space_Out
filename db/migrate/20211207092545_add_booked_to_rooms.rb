class AddBookedToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :booked, :boolean, default: false
  end
end
