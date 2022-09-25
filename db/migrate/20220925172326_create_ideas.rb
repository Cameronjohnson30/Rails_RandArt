class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.column(:name, :string)
      t.column(:category_id, :integer)

      t.timestamps
    end
  end
end
