class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :is_admin?, :get_review_url

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

  def get_review_url review
    if review.id
      product_review_path
    else
      product_reviews_path
    end

  end

end
