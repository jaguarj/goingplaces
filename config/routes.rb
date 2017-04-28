Rails.application.routes.draw do
  get 'users/show'

  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
  delete '/cities/:city_id/posts/:id' => 'posts#destroy', as: "post_delete"
  resources :cities do
  	resources :posts
  end

# get '/show/:user_id' => 'user#profile, as: ""


 get 'about' => 'static_pages#about'
 get 'home' => 'static_pages#home'
 # get '/cities' => 'cities#index'

 # get '/cities/:id' => 'cities#show'

 root to: "static_pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
