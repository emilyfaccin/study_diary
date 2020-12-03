class CreateStudyItemCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :study_items_categories do |t|
      t.references :study_item_id, null: false, foreign_key: true
      t.references :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
