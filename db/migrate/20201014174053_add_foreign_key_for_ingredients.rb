class AddForeignKeyForIngredients < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :ingredients, :recipes
  end
end
