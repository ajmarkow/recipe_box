class Tag < ApplicationRecord
  has many :recipes_tags
  has_many :recipes, :through => :recipes_tags
end
