Rails.application.routes.draw do
  resources :patients
  resources :formulations
  resources :ingredients
  root to: "patients#add_ingredients"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
