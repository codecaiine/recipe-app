Rails.application.routes.draw do

  devise_for :users
 
  root 'foods#index'
  resources :foods, only: [:index, :create, :destroy, :new]

  resources :recipes, only: [:index, :show, :new, :create, :destroy] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end


  get 'public_recipes', to: 'recipes#public_recipes'
end