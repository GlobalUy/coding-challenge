class Patient < ApplicationRecord

  has_many :patients_ingredients
  has_many :ingredients, through: :patients_ingredients

  accepts_nested_attributes_for :patients_ingredients
  validates_associated :patients_ingredients

  validates_presence_of :name, :surname, :birthdate


  def fullname
    "#{self.name} #{self.surname}"
  end

end
