class UsersController < ApplicationController
  before_action :set_user,only:[:edit,:update]

  def new
    if logged_in?
      redirect_to permanths_path
    else
      @user = User.new
    end
  end

  def create
    if "テストユーザでログインする。" == params[:commit]
      list = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map { |i| i.to_a }.flatten
      random = (0...4).map { list[rand(list.length)] }.join
      @user = User.new(
                   name: "User:" + random,
                   email: "User:" + random + "example.com",
                   password: "password",
                   password_confirmation: "password"
                  )
      @user.build_delivery
      session[:user_id] = @user.id
      remember @user
      redirect_to permanths_path
    else
      @user = User.new(user_params)
      @user.build_delivery
      if @user.save
          session[:user_id] = @user.id
          remember @user
          redirect_to permanths_path
      else
          render 'new'
      end
    end
  end

  def edit
    @delivery = Delivery.find_by(user_id: @user.id)
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to permanths_path, notice: "設定を保存しました。" }
        format.js { render :edit }
      else
        format.html { redirect_to permanths_path, notice: "編集できませんでした。。。" }
        format.js { render 'edit' }
      end
    end
  end

  private

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation,:icon)
  end

  def set_user
      @user = User.find(current_user.id)
  end
end
