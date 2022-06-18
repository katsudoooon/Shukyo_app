class CreatePostImageArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :post_image_articles do |t|
      t.integer :post_image_id
      t.integer :article_id

      t.timestamps
    end
  end
end
