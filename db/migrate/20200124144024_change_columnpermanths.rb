class ChangeColumnpermanths < ActiveRecord::Migration[5.2]
  def change
    change_column_null :permanths, :user_id, false
    change_column_null :permanths, :service_id, false
  end
end
