class ServicesController < ApplicationController
  before_action :set_service,only:[:show,:destroy]

  def index
    @services = Service.all
  end

  def show
   @reviews = @service.reviews
   @review = @service.reviews.build
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
     redirect_to services_path, notice: "登録しました"
    else
     render 'new'
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path,notice:"既存サービスを削除しました"
  end

  def search
    @services = Service.where("name LIKE ?", "%#{params[:search]}%")
  end

  private

  def service_params
    params.require(:service).permit(:name,:service_id, :money, :details,:icon)
  end

  def set_service
    @service = Service.find(params[:id])
  end

end
