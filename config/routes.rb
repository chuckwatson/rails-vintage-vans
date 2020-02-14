Rails.application.routes.draw do

  get 'users/index'
  # resources :users, only: [ :new, :create] do

  #  get 'login', to: 'sessions#new'
  #  post 'login', to: 'sessions#create'

  # end
  devise_for :users
  root to: 'pages#home'

  devise_scope :user do
  get 'users/sign_out' => "devise/sessions#destroy"
  get 'users/sign_up' => "devise/sessions#new"
end

  resources :campervans do
    resources :bookings, only: [ :new, :create, :show ]
  end
  resources :campervans do
    resources :reviews, only: [:new, :create]
  end

   # delete '/campervans/:id' => 'campervan#destroy'

   resources :users do
    resources :bookings, only: [ :index, :destroy ]
  end

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
