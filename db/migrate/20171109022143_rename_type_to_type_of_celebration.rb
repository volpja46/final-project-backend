class RenameTypeToTypeOfCelebration < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :type, :type_of_celebration
  end
end
