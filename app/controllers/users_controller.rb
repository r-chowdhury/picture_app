class UsersController < ApplicationController
  before_action :define_user, :define_users
  before_action :redirect_if_not_logged_in, only: [:index]
  def index
    @user = current_user
  end

  def show
    @logged_in_user = User.find(session[:user_id])
    @picture = Picture.new
    #@picture.picture_id = selected_picture.id
    #session[:picture_id] = selected_picture.id
  end

  def new

  end

  def create
    user = User.create(user_params)
    if !user.valid?
      flash[:error] = user.errors.full_messages[0]

      redirect_to signup_path
    else
      session[:user_id] = user.id
      redirect_to users_path
    end
  end

  def edit
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  private
  def define_users
    @users = User.all
  end

  def define_user
    unless(params[:id] == nil)
      @user = User.find(params[:id]) 
    else
      @user = User.new
    end
  end
end
