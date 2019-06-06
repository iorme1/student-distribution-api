class ChangeStateToBeJsonInJsonClientState < ActiveRecord::Migration[5.2]
  def change
    change_column :json_client_states, :state, :jsonb, using: 'state::text::jsonb'
  end
end
