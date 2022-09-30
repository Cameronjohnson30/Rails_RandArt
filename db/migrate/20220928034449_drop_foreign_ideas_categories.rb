class DropForeignIdeasCategories < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :categories, :styles
  end
end
