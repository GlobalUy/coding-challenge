class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :min_percentage
      t.integer :max_percentage
      t.string :description

      t.timestamps
    end
  end
end
