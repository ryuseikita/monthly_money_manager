class DeliveriesController < ApplicationController
  before_action :set_delivery,only:[:update]

  def update
    if @delivery.update(delivery_params)
        redirect_to permanths_path, notice: "userを編集しました！" 
    else
        redirect_to edit_user_path(@delivery.user_id)
    end
  end

  private

  def delivery_params
      params.require(:delivery).permit(:mail_flag, :slack_flag, :linebot_flag)
  end

  def set_delivery
      @delivery = Delivery.find(current_user.id)
  end
end
