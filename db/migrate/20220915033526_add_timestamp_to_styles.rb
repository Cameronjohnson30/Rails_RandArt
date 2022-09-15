class AddTimestampToStyles < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :styles, default: Time.zone.now
    change_column_default :styles, :created_at, nil
    change_column_default :styles, :updated_at, nil
  end
end
