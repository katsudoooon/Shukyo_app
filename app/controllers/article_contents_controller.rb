class ArticleContentsController < ApplicationController
    
    def create
        article = Article.find(params[:article_id])
        content = current_user.article_content.new(article_content_params)
        content.article_id = article.id
        content.save
        redirect_to article_path(article)
        
    end
    
    def destroy
        
    end
    
    private
    def article_content_params
       params.require(article_content).permit(:content) 
    end
    
end
