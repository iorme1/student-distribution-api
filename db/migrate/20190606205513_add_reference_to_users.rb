class AddReferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :json_client_states, :user, index:true
  end
end
