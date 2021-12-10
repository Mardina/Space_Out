class ChangeAvailabilityEndFromDateToDatetime < ActiveRecord::Migration[6.0]
  def change
    change_column :rooms, :availability_end, :datetime
  end
end
