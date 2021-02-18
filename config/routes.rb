Rails.application.routes.draw do
  get 'ingredients/index'
  get 'ingredients/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A user can see the list of cocktails
  get 'cocktails', to: 'cocktails#index'
  # A user can create a new cocktail
  post 'cocktails', to: 'cocktails#create'
  get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # A user can see the details of a given cocktail, with the dose needed for each ingredient
  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # get 'cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktail
  # patch 'cocktails/:id', to: 'cocktails#update'
  # delete 'cocktails/:id', to: 'cocktails#destroy'
end
