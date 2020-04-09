class ChangeColumnServices < ActiveRecord::Migration[5.2]
  def change
    change_column_null :services, :name, false
  end
end
