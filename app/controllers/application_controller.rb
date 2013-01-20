class ApplicationController < ActionController::Base
  protect_from_forgery

  #omniauth viewで使うcurrent_userメソッドの中身
  #View内からコントローラーメソッドを呼びたいってこと
  #単発のヘルパーはやだなって時とかこれで。
  helper_method :current_user
  
  #||= は自己代入。
  private
  def current_user
    @current_user ||= session[:user_info] if session[:user_info]
  end

end
