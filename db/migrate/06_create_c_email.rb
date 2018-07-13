class CreateCEmail < ActiveRecord::Migration[4.2]
  def change
    create_table :c_emails do |t|
      t.string :address
      t.integer :customer_id 
    end
  end
end
