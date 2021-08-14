Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :boats do
  resources :bookings
  end 

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

