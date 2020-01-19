class PermanthsController < ApplicationController

  def index
    @permanths = Permanth.where(user_id: current_user.id)
    @services = Service.all
  end

  def new
    @permanth = Permanth.new
  end

  def create
    redirect_to new_permanth_path
  end

  def search
    @services = Service.where("name LIKE ?", "%#{params[:search]}%")
  end
end
