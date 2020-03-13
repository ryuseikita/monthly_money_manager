class UsersController < ApplicationController
  before_action :set_user,only:[:edit,:update]

  def new
      @user = User.new
  end

  def create
      @user = User.new(user_params)
      @user.build_delivery
      if @user.save
          session[:user_id] = @user.id
          redirect_to permanths_path
      else
          render 'new'
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
