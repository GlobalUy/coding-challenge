class AddTagsToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :tags, :string
  end
end
