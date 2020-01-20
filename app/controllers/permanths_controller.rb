class PermanthsController < ApplicationController

  def index
    @permanths = Permanth.where(user_id: current_user.id)
    @services = Service.all
  end

  def new
    @permanth = Permanth.new
  end

  def create
    @permanth = current_user.permanths.build(permanth_params)
    if @permanth.save
     redirect_to permanths_path, notice: "登録しました！"
    else
     render 'new'
    end
  end

  def search
    @services = Service.where("name LIKE ?", "%#{params[:search]}%")
  end
end

private

def permanth_params
  params.require(:permanth).permit(:service_id, :registration, :cancellation)
end