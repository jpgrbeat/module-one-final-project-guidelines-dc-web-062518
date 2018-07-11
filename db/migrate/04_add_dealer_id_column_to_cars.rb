class AddDealerIdColumnToCars < ActiveRecord::Migration[4.2]

  def change
    add_column :cars,:dealership_id,:integer
  end

end
