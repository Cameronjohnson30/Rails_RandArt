class DropCategoriesIdColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :styles, :categories_id 
  end
end
