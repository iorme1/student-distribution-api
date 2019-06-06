Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      post 'save-state', to: 'client_states#save_state'
      get 'retrieve-state', to: 'client_states#retrieve_state'
      resources :users
    end
  end
end
