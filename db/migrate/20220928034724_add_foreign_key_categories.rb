class AddForeignKeyCategories < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :categories, :styles
  end
end
