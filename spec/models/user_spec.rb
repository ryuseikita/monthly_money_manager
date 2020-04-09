require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.build(:user01) }
  describe "ユーザモデルの" do
    context "nameの値が" do
      it "空白だった場合、NG" do
        user.name = " "
        expect(user).to_not be_valid
      end
      it "16文字以上だった場合、NG" do
        user.name = "a" * 16
        expect(user).to_not be_valid
      end
      it "15文字以下だった場合、OK" do
        user.name = "a" * 15
        expect(user).to be_valid
      end
    end
    context "passwordの値が" do
      it "空の場合、NG" do
        user.password = " "
        user.password_confirmation = " "
        expect(user).to_not be_valid
      end
      it "確認用と一致しない場合,NG" do
        user.password = "password"
        user.password_confirmation = "aaaaaa"
        expect(user).to_not be_valid
      end
      it "6文字以下の場合、NG" do
        user.password = "a" * 5
        user.password_confirmation = "a" * 5
        expect(user).to_not be_valid
      end
      it "6文字以上の場合、OK" do
        user.password = "a" * 6
        user.password_confirmation = "a" * 6
        expect(user).to be_valid
      end
    end
    context "emailの値が" do
      it "空の場合、NG" do
        user.email = " "
        expect(user).to_not be_valid
      end
      it "「*@*.*」の形式ではなかった場合NG" do
        user.email = "aaaaaa"
        expect(user).to_not be_valid
        user.email = "@aaaaa"
        expect(user).to_not be_valid
        user.email = "a@aaaa"
        expect(user).to_not be_valid
        user.email = "aaaaa.a"
        expect(user).to_not be_valid
      end
      it "256文字以上だった場合、NG" do
        user.email = "a" * 244 + "@example.com"
        expect(user).to_not be_valid
      end
      it "「*@*.*」の形式で255文字以下だった場合、OK" do
        user.email = "a" * 243 + "@example.com"
        expect(user).to be_valid
      end
      it "大文字だった場合小文字なっていること" do
        user.email = "TEST@examPLE.com"
        user.save!
        expect(user.reload.email).to eq "test@example.com"
      end
    end
  end
end