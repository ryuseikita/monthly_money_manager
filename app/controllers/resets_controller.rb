class ResetsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user.present?
      list = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map { |i| i.to_a }.flatten
      new_password = (0...8).map { list[rand(list.length)] }.join
      @user.password = new_password
      @user.password_confirmation = new_password
      @user.save!
      ResetPasswordMailer.reset_password(@user,new_password).deliver
      redirect_to new_session_path, notice: "初期パスワードを送信しました。メールを確認してください。"
    else
    redirect_to new_reset_path, notice: "メールアドレスは登録されていません。。。"
    end
  end
end
