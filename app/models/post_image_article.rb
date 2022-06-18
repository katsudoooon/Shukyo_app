class PostImageArticle < ApplicationRecord
    
    belongs_to :article
    belongs_to :post_image
end
