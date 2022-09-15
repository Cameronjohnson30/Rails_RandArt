class CreateCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.column(:name, :string)
      t.column(:style_id, :integer)

      t.timestamps
    end
  end
end
