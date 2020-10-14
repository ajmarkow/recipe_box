class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.column(:title, :string)
      t.column(:instruction, :string)
      t.column(:category, :string)
      t.column(:rating, :integer)
      t.column(:applied_tag, :string)
      t.timestamps()
    end
  end
end
