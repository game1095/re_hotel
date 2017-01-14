class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :room_number
      t.string :room_price

      t.timestamps
    end
  end
end
