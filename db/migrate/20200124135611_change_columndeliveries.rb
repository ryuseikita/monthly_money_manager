class ChangeColumndeliveries < ActiveRecord::Migration[5.2]
  def change
    change_column_null :deliveries, :mail_flag, false
    change_column_default :deliveries, :mail_flag, false
    change_column_null :deliveries, :slack_flag, false
    change_column_default :deliveries, :slack_flag,false
    change_column_null :deliveries, :linebot_flag, false
    change_column_default :deliveries, :linebot_flag,false
  end
end
