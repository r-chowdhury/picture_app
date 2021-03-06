class CommentsController < ApplicationController
  before_action :selected_comment, only: [:show, :edit, :update, :destroy]
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
  end

  def create
    picture_id = session[:picture_id]
    comment_params = params[:comment]
    Comment.create(content: comment_params[:content], picture_id: picture_id, user_id: session[:user_id])
    session[:picture_id] = nil
    redirect_to Picture.find(picture_id)
  end

  def edit

  end

  def update
    picture_id = session[:picture_id]
    comment_params = params[:comment]
    Comment.update(content: comment_params[:content], picture_id: picture_id, user_id: session[:user_id])
    session[:picture_id] = nil
    redirect_to Picture.find(picture_id)

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
