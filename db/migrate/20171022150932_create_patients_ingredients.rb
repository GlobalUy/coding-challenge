class CreatePatientsIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients_ingredients do |t|
      t.references :patient, foreign_key: true
      t.references :ingridient, foreign_key: true
      t.integer :percentage

      t.timestamps
    end
  end
end
