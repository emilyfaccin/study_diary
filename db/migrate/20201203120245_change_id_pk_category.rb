class ChangeIdPkCategory < ActiveRecord::Migration[6.0]
  def change
    change_column :categories, :category_id, :primary_key
  end
end
