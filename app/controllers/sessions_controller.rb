class SessionsController < ApplicationController
  
  #ログインのアクション。リダイレクト先の指定等。
  #日本語メッセージ含むとエラー出るので注意
  def create
    auth = request.env["omniauth.auth"]
    session[:user_info] = auth["info"]
    redirect_to root_url, :notice => "signed in :)"

    #dbテーブルに登録

  end

  #ログアウトのアクション。セッションを空にする。リダイレクト先の指定。
  #日本語メッセージ含むとエラー出るので注意
  def destroy
    session[:user_info] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
