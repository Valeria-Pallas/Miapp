class CommentsController < ApplicationController
  before_action :authenticate_user!
  def show_article
    @article = Article.find(params[:id])
    @comments = @article.comments
    @comment = Comment.new
  end
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @article, notice: 'Comentario creado exitosamente.'
    else
      render 'articles/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
