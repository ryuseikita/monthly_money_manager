class ServicesController < ApplicationController
  before_action :login_check
  before_action :set_service,only:[:show,:destroy]

  def index
    @services = Service.where(user_id: 1)
  end

  def show
   @reviews = @service.reviews
   @review = @service.reviews.build
  end

  def new
    @service = Service.new
  end

  def create
    @service = current_user.services.build(service_params)
    respond_to do |format|
      if @service.save
        format.html { redirect_to services_path, notice: "登録しました"}
        format.js { render new_permanth_path }
      else
        format.html { render 'new' }
        format.js { render new_permanth_path }
      end
    end
  end

  def destroy
    if params[:flag]=="permanths" && @service.user_id==current_user.id
      @service.destroy
      redirect_to new_permanth_path
    elsif admin?
      @service.destroy
      redirect_to services_path,notice:"既存サービスを削除しました"
    else
      redirect_to tops_path
    end
  end

  def search
    @services = Service.where("user_id = ? && name LIKE ?", 1,"%#{params[:search]}%")
  end

  private

  def service_params
    params.require(:service).permit(:name,:service_id, :money, :details,:icon)
  end

  def set_service
    @service = Service.find(params[:id])
  end

end
