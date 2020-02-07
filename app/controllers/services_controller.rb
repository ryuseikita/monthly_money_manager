class ServicesController < ApplicationController
  before_action :set_service,only:[:show]

  def index
    @services = Service.all
  end

  def show
  end

  private

  # def service_params
  #   params.require(:permanth).permit(:service_id, :registration, :cancellation)
  # end

  def set_service
    @service = Service.find(params[:id])
  end

end
