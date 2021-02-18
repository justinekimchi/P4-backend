class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.string :director
      t.integer :year
      t.string :genre
      t.integer :scream_factor
      t.string :synopsis
      

      t.timestamps
    end
  end
end
