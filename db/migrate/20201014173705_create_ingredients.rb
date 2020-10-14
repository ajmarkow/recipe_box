class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.column(:name, :string)
      t.column(:quantity, :string)
      t.column(:recipe_id, :integer)
    end
  end
end
