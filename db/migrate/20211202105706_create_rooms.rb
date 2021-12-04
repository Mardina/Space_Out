class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :address
      t.text :description
      t.integer :capacity
      t.datetime :availability_start
      t.date :availability_end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
