class TagsController < ApplicationController
  def index
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
