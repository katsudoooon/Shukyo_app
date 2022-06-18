class RemoveGenreIdFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :genre_id, :integer
  end
end
