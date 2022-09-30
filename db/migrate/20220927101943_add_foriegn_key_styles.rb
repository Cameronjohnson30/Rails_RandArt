class AddForiegnKeyStyles < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :categories, :styles
  end
end
