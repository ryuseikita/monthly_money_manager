class AddColumnToService < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :user_id, :integer
  end
end
