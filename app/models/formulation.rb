class Formulation < ApplicationRecord

  has_many :ingredients, through: :formulation_ingredients
  has_many :formulation_ingredients
  
end
