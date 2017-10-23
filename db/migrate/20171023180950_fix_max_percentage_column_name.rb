class FixMaxPercentageColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :ingredients, :max_percentage, :max_percentage
  end
end
