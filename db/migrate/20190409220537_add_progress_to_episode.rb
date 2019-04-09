class AddProgressToEpisode < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :progress, :integer, default: 0
  end
end
