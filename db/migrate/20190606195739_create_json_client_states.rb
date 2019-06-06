class CreateJsonClientStates < ActiveRecord::Migration[5.2]
  def change
    create_table :json_client_states do |t|
      t.text :state

      t.timestamps
    end
  end
end
