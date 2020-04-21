require 'rails_helper'

RSpec.describe Permanth, type: :model do
  let(:user) { FactoryBot.create(:user01) }
  let(:service) {FactoryBot.create(:service01, user_id: user.id)}
  let!(:permanth) { FactoryBot.build(:test_permanth01 ,user_id: user.id, service_id: service.id) }
  describe "月額会費の" do
    context "登録時に" do
      it "user_idが空だった場合、NG" do
        permanth.user_id = " "
        expect(permanth).to_not be_valid
      end
      it "service_idが空だった場合、NG" do
        permanth.service_id = " "
        expect(permanth).to_not be_valid
      end
      it "加入日と解約予定日が空場合、OK" do
        permanth.registration = " "
        expect(permanth).to be_valid
        permanth.cancellation = " "
        expect(permanth).to be_valid
      end
    end
  end
end