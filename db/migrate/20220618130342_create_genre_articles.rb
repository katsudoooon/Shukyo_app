class CreateGenreArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_articles do |t|
      t.integer :genre_id
      t.integer :article_id

      t.timestamps
    end
  end
end
