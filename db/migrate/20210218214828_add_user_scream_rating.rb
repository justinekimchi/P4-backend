class AddUserScreamRating < ActiveRecord::Migration[6.0]
  def change
    add_column :user_movies, :user_scream_rating, :integer
  end
end
