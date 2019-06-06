class RemoveReferenceFromJsonClientState < ActiveRecord::Migration[5.2]
  def change
    remove_reference :json_client_states, :users, index:true
  end
end
