class AddBudgetToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :budget, :integer
  end
end
