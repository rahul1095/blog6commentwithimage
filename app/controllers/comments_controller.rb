class CommentsController < ApplicationController

	def create

    @project= Project.find(params[:project_id])
    @comment = @project.comments.create(comment_params)
    redirect_to project_path(@project)
     # render 'projects/create_comments'
      # render 'projects/create_comments'
  end

  def edit
     @blog = Project.find(params[:project_id])
     @comment = Comment.find(params[:id])
  end

 def destroy
    #@article = Article.find(params[:id])
    #@comment = @article.comments.find(params[:article_id])
    @blog = Project.find(params[:project_id])
     @comment = Comment.find(params[:id])
    @comment.destroy
    # redirect_to project_path(@project)
     redirect_to @blog

  end

  def update
     @blog = Project.find(params[:project_id])
     @comment = Comment.find(params[:id])
     @comment.update(comment_params)
      flash[:notice] = "Comment Updated"

   redirect_to blog_path(@blog)
     
  end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :image)
    end

end
