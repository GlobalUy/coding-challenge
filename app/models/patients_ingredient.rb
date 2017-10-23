class PatientsIngredient < ApplicationRecord
  belongs_to :patient
  belongs_to :ingridient
end
