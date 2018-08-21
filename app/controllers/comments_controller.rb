class CommentsController < ApplicationController
  before_action :selected_comment, only: [:show, :edit, :update, :destroy]
  def index
    @comment = Comment.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy

  end

  private
  def selected_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :picture_id, :user_id)
  end
end
