class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :rating, default: 0
      t.integer :duration
      t.integer :price

      t.timestamps
    end
  end
end
