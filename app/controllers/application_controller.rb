class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :is_admin?

  def current_user
    if session[:user_id]
      if User.exists?(session[:user_id])
        @current_user ||= User.find(session[:user_id])
      else
        session[:user_id] = nil
      end
    end
  end

  def is_admin?
    current_user && current_user.admin
  end

end
