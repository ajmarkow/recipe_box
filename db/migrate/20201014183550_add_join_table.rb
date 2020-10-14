class AddJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes_tags, id: false do |t|
      t.belongs_to_and_has_many :recipe, index: true
      t.belongs_to_and_has_many :tag, index: true
    end
  end
end
