class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.text :address
      t.text :description
      t.integer :capacity
      t.references :booking_id, null: false, foreign_key: true
      t.references :user_id, null: false, foreign_key: true
      t.datetime :availability_start
      t.datetime :availability_end
      t.string :images

      t.timestamps
    end
  end
end
