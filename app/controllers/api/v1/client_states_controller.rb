class Api::V1::ClientStatesController < ApplicationController

  def save_state
    @client_state = params.to_json

    @client_state_json = current_user
      .json_client_states
      .new(state: @client_state)

    if @client_state_json.save
      render json: @client_state_json, status: 200
    else
      render json: @client_state_json.errors
    end
  end

  def retrieve_state
    last_saved_state = current_user.json_client_states.last

    render json: last_saved_state
  end
end
