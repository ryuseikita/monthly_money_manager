class ReviewsController < ApplicationController
  def create
    @service = Service.find(params[:service_id])
    @review = @service.reviews.build(review_params)
    #リファクタリングする
    @review.user_id = current_user.id
    respond_to do |format|
      if @review.save
        format.js { redirect_to service_path(@service)}
      else
        format.html { redirect_to service_path(@service), notice: '投稿できませんでした...' }
      end
    end
  end
  private

  def review_params
    params.require(:review).permit(:service_id, :user_id,:comment)
  end
end