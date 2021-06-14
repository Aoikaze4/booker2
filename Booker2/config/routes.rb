Rails.application.routes.draw do
  resources :books, only:[:index, :edit, :show, :new]
  devise_for :users
  root to: 'homes#top'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
