Rails.application.routes.draw do

  devise_for :users
  root 'home#top'

  devise_scope :user do
    post '/sessions/guest_sign_in', to: 'sessions#new_guest'
  end

  resources :users, only: [:show, :create, :edit, :update, :new, :destroy, :unscribe, :withdraw] do
    collection do
      get :unscribe
      patch :withdraw
    end
  end

  resources :properties, only: [:new, :index, :show, :search, :create, :destroy, :my_property] do
    collection do
      get :search
      get :my_property
    end
       member do
      post "add", to: "properties#create"
    end
  end

  resources :messages, only: [:create, :destroy]
	resources :rooms, only: [:index, :show, :create]


  resources :favorites, only: [:index, :create, :destroy]

  resources :prefectures, only: [:create]
  resources :areas, only: [:create]


  resources :genre, only: [:create], as: 'genres'

 	get 'about' => 'home#about', as: 'abouts'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
