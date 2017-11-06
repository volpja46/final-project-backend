class AddDateToGifts < ActiveRecord::Migration[5.1]
  def change
    add_column :gifts, :date, :date
  end
end
