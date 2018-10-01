Rails.application.routes.draw do

  resources :categories
  resource :session
  get "signup" => 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "events#index"

  get "events/filter/:scope" => "events#index", as: :filtered_events

  resources :events do
    resources :registrations
    resources :likes
  end
end
