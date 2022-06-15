class CreatePostComments < ActiveRecord::Migration[5.2]
  def change
    create_table :post_comments do |t|
      t.text :comment
      t.integer :article_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
