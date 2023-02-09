Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index,:show,:edit,:update]
  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]

  root :to => "homes#top"
  get "home/about"=>"homes#about"

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
