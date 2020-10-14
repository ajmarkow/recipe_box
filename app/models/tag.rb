class Tag < ApplicationRecord
  has_many :recipes, :through => :recipes_tags
  validates :name, presence: true
end
