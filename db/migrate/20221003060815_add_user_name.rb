class AddUserName < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, limit: 20
  end
end
