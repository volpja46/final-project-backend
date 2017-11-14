class AddPurchasedToPresents < ActiveRecord::Migration[5.1]
  def change
    add_column :presents, :purchased, :boolean 
  end
end
