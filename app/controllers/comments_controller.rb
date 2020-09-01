class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    # redirect_to "/blogs/#{@comment.@blog.id}"
    respond_to do |format|
      format.html { redirect_to blog_path(params[:blog_id])  }
      format.json
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :index
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, blog_id: params[:blog_id])
  end
end
