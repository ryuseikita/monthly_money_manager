class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :icon
      t.boolean :admin_flag, default: false
      t.boolean :comment_flag, default: true

      t.timestamps
    end
  end
end
