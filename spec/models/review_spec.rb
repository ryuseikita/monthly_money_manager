require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:user) { FactoryBot.create(:user01) }
  let(:service) {FactoryBot.create(:service01)}
  let!(:review) { FactoryBot.build(:user01_coment ,user_id: user.id, service_id: service.id) }
  describe "レビューのコメントの" do
    context "投稿時に" do
      it "user_idが空だった場合、NG" do
        review.user_id = " "
        expect(review).to_not be_valid
      end
      it "service_idが空だった場合、NG" do
        review.service_id = " "
        expect(review).to_not be_valid
      end
      it "コメントが空だった場合、NG" do
        review.comment = " "
        expect(review).to_not be_valid
      end
      it "コメントが141文字以上だった場合、NG" do
        review.comment = "a" * 140
        expect(review).to be_valid
        review.comment = "a" * 141
        expect(review).to_not be_valid
      end
    end
  end
end