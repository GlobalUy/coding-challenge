class Ingredient < ApplicationRecord

  has_many :formulations, through: :formulation_ingredients
  has_many :formulation_ingredients


  def self.search(q)
    wild_card = "%"+q+"%"
    return Ingredient.where("tags like :wildcard or name like :wildcard",:wildcard => wild_card)
  end

end
