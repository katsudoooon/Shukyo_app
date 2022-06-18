class PostImage < ApplicationRecord
    
    belongs_to :customer
    has_many :post_image_articles, dependent: :destroy
end
