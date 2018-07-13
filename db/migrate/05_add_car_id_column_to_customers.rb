class AddCarIdColumnToCustomers < ActiveRecord::Migration[4.2]
  def change
    add_column :customers,:car_id,:integer
  end
end
