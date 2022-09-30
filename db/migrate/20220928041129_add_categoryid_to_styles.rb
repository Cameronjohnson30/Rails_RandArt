class AddCategoryidToStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :styles, :categories_id, :integer
  end
end
