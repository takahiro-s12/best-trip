Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  get 'posts/show'
  get 'posts/destroy'
  devise_for :users
  root to: 'homes#top'
  get 'homes/about'
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
