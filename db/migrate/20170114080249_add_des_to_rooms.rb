class AddDesToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :room_des, :text
  end
end
