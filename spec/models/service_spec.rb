require 'rails_helper'

RSpec.describe Service, type: :model do
  let(:service) {FactoryBot.build(:service01)}
  describe "既存サービスの" do
    context "登録時に" do
      it "nameが空だった場合、NG" do
        service.name = " "
        expect(service).to_not be_valid
      end
    end
  end
end