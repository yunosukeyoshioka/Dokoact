Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  
  resources :users, only: [:show, :create, :edit, :update, :new, :destroy, :unscribe, :withdraw] do
    collection do
      get 'unscribe'
      patch 'withdraw'
    end
  end


  resources :properties, only: [:new, :index, :show, :edit, :search, :create, :destroy, :update] do
    collection do 
      get :search
    end
  end

	resources :rooms, only: [:index, :show, :create, :destroy] do
    resources :messages, only: [:create, :destroy]
  end

  resources :favorites, only: [:index, :create, :destroy, :withdraw] 

  resources :prefectures, only: [:create]
  resources :areas, only: [:create]


  resources :genre, only: [:create], as: 'genres'

 	get 'about' => 'home#about', as: 'abouts'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
