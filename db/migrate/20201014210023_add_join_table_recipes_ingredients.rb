class AddJoinTableRecipesIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes_ingredients, id: false do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :ingredient, index: true
    end
  end
end
