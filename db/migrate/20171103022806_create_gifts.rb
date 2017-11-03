class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.string :photo
      t.integer :user_id
      t.string :for_who

      t.timestamps
    end
  end
end
