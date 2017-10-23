class Patient < ApplicationRecord

  has_many :ingredients, through: :patients_ingedients
  has_many :patients_ingedients
  
end
