class ChangeIdPkStudyItem < ActiveRecord::Migration[6.0]
  def change
    change_column :study_items, :study_item_id, :primary_key
  end
end
