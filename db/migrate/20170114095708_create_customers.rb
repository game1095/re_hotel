class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :tel_no
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
