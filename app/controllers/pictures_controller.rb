class PicturesController < ApplicationController
  before_action :selected_picture, only: [:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
  end
  def create
    
  end

  def edit
  end
  private
  def selected_picture
    @picture = Picture.find(params[:id])
  end
  def picture_params
    params.require(:picture).permit(:image_url, :title, :user_id)
  end
end
