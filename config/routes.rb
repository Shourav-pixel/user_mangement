Rails.application.routes.draw do
 # devise_for :users

 devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations:'users/registrations'
      }

 
  get "up" => "rails/health#show", as: :rails_health_check

   root 'home#index'

 
  # Defines the root path route ("/")
  # root "posts#index"

  # config/routes.rb
#get "user"=>"admin/user#index"
# namespace :admin do
#   resources :users, only: [:index] # Add this line to define the index route
#   post 'users/:id/block', to: 'users#block', as: :block_user
#   post 'users/:id/unblock', to: 'users#unblock', as: :unblock_user
#   delete 'users/:id/delete', to: 'users#delete', as: :delete_user
# end


  namespace :admin do
    resources :users do
      post :bulk_actions, on: :collection
    end
  end








end
