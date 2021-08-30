class CommentsController < ApplicationController
  def new
    @topic_id = params[:topic_id]
    @comment = Comment.new
  end
  
  def create
    @topic_id = params[:topic_id]
    @comment = current_user.comments.new(comment_params)
    if @comment.save
      redirect_to topic_path, success: "コメントしました"
    else
      flash.now[:danger] = "コメントできませんでした"
      render :new
    end
  end
  
  private
  def comment_params
    params.require(:comment).permit(:text, :topic_id)
  end
end
