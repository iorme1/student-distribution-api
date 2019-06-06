class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :target_attribute
      t.integer :max_capacity
      t.string :password_digest

      t.timestamps
    end
  end
end
