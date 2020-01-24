class Admin::UsersController < ApplicationController
    before_action :admin_user

    def index
        @users = User.all.order("created_at DESC")
    end

    private

    def admin_user
         redirect_to permanths_path unless current_user.admin_flag?
    end
end