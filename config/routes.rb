Rails.application.routes.draw do

  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact

  resources :posts
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: "home#index"
end
