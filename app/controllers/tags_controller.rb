class TagsController < ApplicationController
  before_action :selected_tag, only: [:show, :edit, :update, :destroy]
  def index
    @tags = Tag.all
  end

  def show
    @tag = selected_tag
  end

  def new

  end

  def edit
  end


  private
  def tag_params
    params.require(:tag).permit(:name)
  end

  def selected_tag
    @tag = Tag.find(params[:id])
  end

end
