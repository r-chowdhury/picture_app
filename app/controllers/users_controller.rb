class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, only: [:index]
  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @logged_in_user = User.find(session[:user_id])
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

end
