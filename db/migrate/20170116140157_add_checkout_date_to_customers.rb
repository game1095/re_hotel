class AddCheckoutDateToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers , :checkout_date , :date
  end
end
