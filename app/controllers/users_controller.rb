class UsersController < ApplicationController
  before_action :selected_user
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  def selected_user
    @user = User.find(param[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
  
end
