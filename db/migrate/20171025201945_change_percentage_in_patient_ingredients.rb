class ChangePercentageInPatientIngredients < ActiveRecord::Migration[5.1]
  def change
  	change_column :patients_ingredients, :percentage, :float
  end
end
