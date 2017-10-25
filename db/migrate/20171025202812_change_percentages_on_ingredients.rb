class ChangePercentagesOnIngredients < ActiveRecord::Migration[5.1]
  def change
  	change_column :ingredients, :min_percentage, :float  	
  	change_column :ingredients, :max_percentage, :float
  end
end
