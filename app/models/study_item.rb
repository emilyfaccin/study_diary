class StudyItem < ApplicationRecord
  has_many :study_items_categories
  has_many :categories, :through => :study_items_categories
end
