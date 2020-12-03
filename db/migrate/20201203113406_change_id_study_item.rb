class ChangeIdStudyItem < ActiveRecord::Migration[6.0]
  def change
    rename_column :study_items, :id, :study_item_id
  end
end
