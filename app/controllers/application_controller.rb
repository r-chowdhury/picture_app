class ApplicationController < ActionController::Base
  before_action :define_logged_in_user

  def redirect_if_not_logged_in
    if !session[:user_id]
      redirect_to login_path
    end
  end

  def current_user
    User.find(session[:user_id])
  end

  def define_logged_in_user
    #byebug
    if(session[:user_id])
      @logged_in_user = User.find(session[:user_id])
    else
      @logged_in_user = User.new
      @logged_in_user.username = 'Guest'
    end
  end

end
