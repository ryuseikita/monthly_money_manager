class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :service_id
      t.integer :user_id
      t.text :comment

      t.timestamps
    end
  end
end
