Rails.application.routes.draw do
  devise_for :users
  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
  delete 'cocktail/:id', to: 'cocktails#destroy', as: :delete_cocktail
end
