class Article < ApplicationRecord
    
    belongs_to :customer
    has_many :post_comments, dependent: :destroy
    has_many :post_image_articles, dependent: :destroy
    has_many :genre_articles, dependent: :destroy
    
end
