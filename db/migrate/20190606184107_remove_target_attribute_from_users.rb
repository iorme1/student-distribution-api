class RemoveTargetAttributeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :target_attribute, :string
  end
end
