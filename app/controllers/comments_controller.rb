class CommentsController < ApplicationController
    
    def index
        
    end
    
    def create
        article = Article.find(params[:article_id])
        comment = current_user.post_comment.new(post_comment_params)
        comment.article.id = article.id
        comment.save
        redirect_to article_path(article)
        
    end
    
    def destroy
        
        
    end
    
    private
    def post_comment_params
        params.require(:post_comment).permit(:comment)
    end
    
end
