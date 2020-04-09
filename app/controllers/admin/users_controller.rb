class Admin::UsersController < ApplicationController
	before_action :admin_user

	def index
		@users = User.page(params[:page]).per(10)
	end

	def comment_authority
		@user = User.find(params[:user_id])
		if @user.comment_flag
			@user.comment_flag = false
		else
			@user.comment_flag = true
		end
		@user.save!
	end

	def search
    @users = User.where("email LIKE ?", "%#{params[:search]}%")
  end

	private

	def admin_user
		redirect_to permanths_path unless current_user.admin_flag?
	end
end