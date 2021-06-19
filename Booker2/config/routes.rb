Rails.application.routes.draw do
  resources :books, only:[:index, :edit, :show, :new, :create, :destroy, :update]

  devise_for :users

  root to: 'homes#top'
  get 'home/about', to: 'homes#about'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
