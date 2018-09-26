Rails.application.routes.draw do
  resources :likes
  resource :session
  get "signup" => 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "events#index"
  resources :events do
    resources :registrations
  end
end
