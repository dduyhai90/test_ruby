class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper

  before_action :require_login

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end

  def check_login
    if logged_in?
      redirect_to user_path(current_user)
    end
  end
end
