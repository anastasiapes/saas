Rails.application.routes.draw do
resources :users
resources :items
resources :comments
resources :sessions

   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'welcome', to: 'sessions#welcome'
   post 'logout', to: 'sessions#new'
   get 'items', to: 'items#index'
   delete 'logout' =>  'sessions#destroy'
   root "sessions#new"
end

