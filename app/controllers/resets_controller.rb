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
      ###飛び先確認
    else
    redirect_to new_reset_path, notice: "メールアドレスは登録されていません。。。"
    end
  end
end
