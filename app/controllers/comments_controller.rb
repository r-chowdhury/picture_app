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
    Comment.create(text: 'whatever', user_id: session[:user_id])
  end

  def edit
  end

  def update
  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:content, :picture_id, :user_id)
  end

  def selected_comment
    @comment = Comment.find(params[:id])
  end

end
