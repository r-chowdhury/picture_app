class TagsController < ApplicationController
  before_action :selected_tag, only: [:show, :edit, :update, :destroy]
  def index
    @tag = Tag.all
  end

  def show
  end

  def new
  
  end

  def edit
  end
  private
  def selected_tag
    @tag = Tag.find(params[:id])
  end
  def tag_params
    params.require(:tag).permit(:name)
  end
end
