class ServicesController < ApplicationController
  before_action :set_service,only:[:show]

  def index
    @services = Service.all
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
     redirect_to services_path, notice: "登録しました！"
    else
     render 'new'
    end
  end

  private

  def service_params
    params.require(:service).permit(:name,:service_id, :money, :details ,:icon)
  end

  def set_service
    @service = service.find(params[:id])
  end

end
