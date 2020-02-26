class DeleteIntegerFromRestaurants < ActiveRecord::Migration[5.2]
  def change
     remove_column :restaurants, :integer
  end
end
