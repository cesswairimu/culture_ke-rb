Rails.application.routes.draw do
  devise_for :users
  get 'story/new'
  post '/new_story' => "story#create"
  get 'story/update'
  get 'story/:id' => "story#show"
  get 'story/:id/edit' => "story#edit"
  get '/stories' => 'story#index'
  get 'users/new'
  post '/users/new' => "users#create"
  get 'users' => "users#index"
  get 'users/edit'
  get 'users/update'

  root 'main_pages#home'
  get 'main_pages/about'
  get 'main_pages/random'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
