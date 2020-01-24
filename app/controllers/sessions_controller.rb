class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash.now[:danger] = 'ログインに成功しました'
        redirect_to permanths_path
      else
        flash.now[:danger] = 'ログインに失敗しました'
        render 'new'
      end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end