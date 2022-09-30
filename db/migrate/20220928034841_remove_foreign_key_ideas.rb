class RemoveForeignKeyIdeas < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :ideas, :categories
  end
end
