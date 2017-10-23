class PatientsIngredient < ApplicationRecord
  belongs_to :patient
  belongs_to :ingredient

  validate :accepted_percentage

  def accepted_percentage
    if !self.percentage.between?(self.ingredient.min_percentage,self.ingredient.max_percentage)
      errors.add(:percentage, "need to be between #{self.ingredient.min_percentage} and #{self.ingredient.max_percentage}")

    end
  end
end
