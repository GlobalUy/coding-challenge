Rails.application.routes.draw do
  get 'patients/add_ingredients' => 'patients#add_ingredients', as: 'add_ingredients'
  post 'patients/confirm_ingredients' => 'patients#confirm_ingredients', as: 'confirm_ingredients'
  resources :patients
  resources :formulations
  resources :ingredients

  root to: "patients#add_ingredients"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
