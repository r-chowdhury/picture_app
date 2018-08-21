class ApplicationController < ActionController::Base

  private
  def define_logged_in_user
    if(session[:logged_in_user_id] != nil)
      @logged_in_user_id = User.find(session[:logged_in_user_id])
    else
      @logged_in_user = User.new
      @logged_in_user.name = 'Guest'
    end
  end

end
