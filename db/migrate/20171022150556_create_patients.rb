class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.date :birthdate

      t.timestamps
    end
  end
end
