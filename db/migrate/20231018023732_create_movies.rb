class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :release_year
      t.string :synopsis
      t.string :origin_country
      t.integer :running_time

      t.timestamps
    end
  end
end
