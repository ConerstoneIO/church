Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    jsonapi_resources :users
    jsonapi_resources :websites
    jsonapi_resources :church_positions
    jsonapi_resources :contacts
    jsonapi_resources :slider_pictures
    post 'token' => 'sessions#create'
    post 'registration' => 'sessions#sign_up'
  end
end
