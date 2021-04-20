class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private

  def require_user
    redirect_to login_path, alert: 'You must be logged in to access this page.' and return if current_user.nil?
  end

end
