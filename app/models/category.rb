class Category < ApplicationRecord
  has_many :study_items_categories
  has_many :study_items, :through => :study_items_categories
end
