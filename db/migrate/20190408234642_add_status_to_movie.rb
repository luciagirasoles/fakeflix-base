class AddStatusToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :status, :integer
  end
end
