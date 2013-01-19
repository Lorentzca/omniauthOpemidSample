class ApplicationController < ActionController::Base
  protect_from_forgery

  #omniauth viewで使うcurrent_userの中身
  helper_method :current_user
  private
  def current_user
    @current_user ||= session[:user_info] if session[:user_info]
  end

end
