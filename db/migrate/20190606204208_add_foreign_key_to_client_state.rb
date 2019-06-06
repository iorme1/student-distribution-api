class AddForeignKeyToClientState < ActiveRecord::Migration[5.2]
  def change
    add_reference :json_client_states, :users, index:true
  end
end
