class AddForeignKeyForIdeas < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :ideas, :categories
  end
end
