Rails.application.routes.draw do
  devise_for :users

  resources :users do 
  	member do 
  	  post 'logout'
  	end
  end
  
  resources :posts do
  	resources :comments
  end

  root 'posts#index'
end