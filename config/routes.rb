Rails.application.routes.draw do
  devise_for :users
  
  root to: "homes#top"
  get '/home/about' => "homes#about", as: "about"
  
  resources :books, only:[:new, :index, :show, :edit , :destroy, :update, :create]
  resources :users, only:[:show, :edit, :index ,:update, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
