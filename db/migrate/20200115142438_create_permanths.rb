class CreatePermanths < ActiveRecord::Migration[5.2]
  def change
    create_table :permanths do |t|
      t.integer :user_id
      t.integer :service_id
      t.datetime :registration
      t.datetime :cancellation

      t.timestamps
    end
  end
end
