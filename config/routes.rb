Rails.application.routes.draw do
  get 'patients/add_ingredients' => 'patients#add_ingredients', as: 'add_ingredients'
  get 'ingredients/search' => 'ingredients#search', as: 'ingredients_search'
  post 'patients/confirm_ingredients' => 'patients#confirm_ingredients', as: 'confirm_ingredients'
  post 'formulations/formulations_for_select' => 'formulations#formulations_for_select', as: 'formulations_for_select'
  resources :patients
  resources :formulations
  resources :ingredients

  root to: "patients#add_ingredients"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
