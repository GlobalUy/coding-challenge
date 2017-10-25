class ChangePercentageInFormulationIngredients < ActiveRecord::Migration[5.1]
  def change
  	change_column :formulation_ingredients, :percentage, :float
  end
end
