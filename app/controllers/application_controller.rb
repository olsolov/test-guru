class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user,
                :logged_in?,
                :log_out

  private

  def authenticate_user!
    cookies[:redirect_path] = request.path
    return redirect_to login_path, alert: 'Please log in to access this resource' unless current_user

    cookies[:email] = current_user.email
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
