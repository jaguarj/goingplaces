Rails.application.routes.draw do
  devise_for :users
  # get 'static_pages/home'

  # get 'static_pages/about'

 get 'about' => 'static_pages#about'
 get 'home' => 'static_pages#home'
 get '/cities' => 'cities#index'

 root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
