class RemoveArticleIdFromPostImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_images, :article_id, :integer
  end
end
