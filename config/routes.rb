Rails.application.routes.draw do

  get 'ingredients/search' => 'ingredients#search', as: 'ingredients_search'
  post 'formulations/formulations_for_select' => 'formulations#formulations_for_select', as: 'formulations_for_select'
  get 'build_pdf/:id' => 'patients#build_pdf', as: 'build_pdf'
  resources :patients
  resources :formulations
  resources :ingredients

  root to: "patients#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
