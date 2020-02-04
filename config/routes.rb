Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: 'pages#home'
  resources :campervans do
    resources :bookings, only: [ :new, :create ]
  end
  resources :bookings do
    resources :reviews, only: [ :new, :create ]
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
