class ReviewsController < ApplicationController
  before_action :login_check
  before_action :set_review,only:[:destroy,:edit,:update]

  def create
    @service = Service.find(params[:service_id])
    @review = @service.reviews.build(review_params)
    #リファクタリングする
    @review.user_id = current_user.id
    @review.save
    render :index
  end

  def destroy
    if current_user.id == @review.user_id
      @review.comment = "コメントは削除されました。"
      @review.save
    end
    redirect_to service_path(params[:service_id])
  end

  private

  def review_params
    params.require(:review).permit(:service_id, :user_id, :comment)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end