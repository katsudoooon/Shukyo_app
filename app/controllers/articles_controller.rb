class ArticlesController < ApplicationController
    
    def new
        @article = Article.new
        
    end
    
    def create
        @article = Article.new(article_params)
        @article.customer_id = current_customer.id
        @article.save
        redirect_to articles_path
        
    end
    
    def index
        @articles = Article.all
        
    end
    
    def show
        @article = Article.find(params[:id])
        @post_comment = PostComment.new
        @post_comments = PostComment.all
        @article_content = ArticleContent.new
        @article_contents = ArticleContent.all
        
    end
    
    def update
        
    end
    
    private
    
    def article_params
        params.require(:article).permit(:title, :content)
    end
    
end
