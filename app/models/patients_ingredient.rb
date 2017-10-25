class PatientsIngredient < ApplicationRecord
  belongs_to :patient
  belongs_to :ingredient


  validates_presence_of :percentage
  validates_presence_of :ingredient
  validate :accepted_percentage, if: :ingredient_present?

  def accepted_percentage
    if !self.percentage.between?(self.ingredient.min_percentage,self.ingredient.max_percentage)
      errors.add(:percentage, "need to be between #{self.ingredient.min_percentage} and #{self.ingredient.max_percentage}")
    end
  end

  def ingredient_present?
    self.ingredient.present?
  end
end
