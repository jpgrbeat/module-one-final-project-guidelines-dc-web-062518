class CreateDealerships < ActiveRecord::Migration[4.2]
  def change
    create_table :dealerships do |t|
      t.string :name
      t.string :location
      t.string :phone
      t.string :website
    end
  end
end
