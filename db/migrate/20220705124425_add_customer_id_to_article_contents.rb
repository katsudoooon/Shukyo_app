class AddCustomerIdToArticleContents < ActiveRecord::Migration[5.2]
  def change
    add_column :article_contents, :customer_id, :integer
  end
end
