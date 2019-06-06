class RemoveMaxCapacityFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :max_capacity, :integer
  end
end
