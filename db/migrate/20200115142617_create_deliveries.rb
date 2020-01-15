class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.boolean :mail_flag
      t.boolean :slack_flag
      t.boolean :linebot_flag

      t.timestamps
    end
  end
end
