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
    picture_id = session[:picture_id]
    picture_params = params[:picture]
    picture = Picture.create(image_url: picture_params[:image_url], title: picture_params[:title], user_id: session[:user_id])
    picture_tag = PictureTag.create(picture_id: picture.id, tag_id: picture_params[:tag_id])
    byebug
    session[:picture_id] = nil
    redirect_to picture
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
