class Genre < ApplicationRecord
    has_many :genre_articles, dependent: :destroy
    
end
