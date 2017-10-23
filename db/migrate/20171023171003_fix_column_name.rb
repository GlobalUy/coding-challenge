class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :patients_ingredients, :ingridient_id, :ingredient_id
  end
end
