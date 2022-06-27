class CreateArticleContents < ActiveRecord::Migration[5.2]
  def change
    create_table :article_contents do |t|
      t.integer :article_id
      t.text :content
      t.string :image_id

      t.timestamps
    end
  end
end
