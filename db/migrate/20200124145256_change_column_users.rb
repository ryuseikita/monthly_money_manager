class ChangeColumnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :name, false
    change_column_null :users, :email, false
    change_column_null :users, :password_digest, false
    change_column_null :users, :icon, false
    change_column_default :users, :icon, "default_icon.jpg"
  end
end
