class AddProgressToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :progress, :integer, default: 0
  end
end
