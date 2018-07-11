require "pry"
class CreateCars < ActiveRecord::Migration[4.2]
  def change
    create_table :cars do |t|
      t.string :stock_number
      t.string :year
      t.string :make
      t.string :model
      t.float :price
      t.float :cost
      # t.integer :dealership
    end
  end
end
