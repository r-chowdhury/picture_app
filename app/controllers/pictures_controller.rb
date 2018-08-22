class PicturesController < ApplicationController
  before_action :selected_picture, only: [:show, :edit, :update, :destroy]
  helper_method :selected_picture
  def index
    @pictures = Picture.all.order("created_at DESC")
  end

  def show
    @comment = Comment.new
    @comment.picture_id = selected_picture.id
    @comments = selected_picture.comments.all
    session[:picture_id] = selected_picture.id
  end

  def new
  end
  def create

  end

  def edit
  end

  private
  def picture_params
    params.require(:picture).permit(:image_url, :title, :user_id)
  end

  def selected_picture
    @picture = Picture.find(params[:id])
  end
end
