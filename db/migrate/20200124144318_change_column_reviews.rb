class ChangeColumnReviews < ActiveRecord::Migration[5.2]
  def change
    change_column_null :reviews, :service_id, false
    change_column_null :reviews, :user_id, false
  end
end
