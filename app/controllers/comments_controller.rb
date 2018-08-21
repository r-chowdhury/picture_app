class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
  private
  def selected_comment
    @comment = Comment.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:content, :picture_id, :user_id)
  end
end
