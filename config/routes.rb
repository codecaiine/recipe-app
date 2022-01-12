Rails.application.routes.draw do
  get 'food/new'
  get 'food/edit'
  get 'food/show'
  get 'food/index'
  devise_for :users
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
