class ChangeIdCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :categories, :id, :category_id
  end
end
