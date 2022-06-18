class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.string :name
      t.text :caption
      t.integer :article_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
