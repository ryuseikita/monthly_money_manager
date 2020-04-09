class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :money
      t.text :details
      t.string :icon

      t.timestamps
    end
  end
end
