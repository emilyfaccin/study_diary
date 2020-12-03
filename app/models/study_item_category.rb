class StudyItemCategory < ApplicationRecord
  belongs_to :study_item_id
  belongs_to :category_id
end
