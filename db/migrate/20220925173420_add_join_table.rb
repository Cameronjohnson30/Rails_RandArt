class AddJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_styles, id: false do |t|
      t.belongs_to :style, index: true 
      t.belongs_to :category, index: true
    end
  end
end
