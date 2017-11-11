class CreatePresents < ActiveRecord::Migration[5.1]
  def change
    create_table :presents do |t|
      t.integer :event_id
      t.integer :price
      t.string :name
      t.string :store
      t.string :priority

      t.timestamps
    end
  end
end
