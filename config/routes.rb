Rails.application.routes.draw do
  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }

 get 'about' => 'static_pages#about'
 get 'home' => 'static_pages#home'
 get '/cities' => 'cities#index'
 get '/cities/:id' => 'cities#show'

 root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
