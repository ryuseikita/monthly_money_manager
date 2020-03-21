require 'rails_helper'

RSpec.describe 'レビュー機能', type: :system , js: true do
  let!(:user) { FactoryBot.create(:admin_user) }
  let!(:music){ FactoryBot.create(:service01)}
  let!(:Hulu){ FactoryBot.create(:service02)}
  before do
    visit new_session_path
    fill_in 'session[email]' ,with: 'admin_user@example.com'
    fill_in 'session[password]',with:'password'
    click_button 'ログイン'
    click_on 'menu'
    click_on 'サービス一覧'
  end
  describe 'サービス詳細画面にて' do
    context 'admin_userがコメントした場合' do
      it 'コメントが表示されること' do
        page.all(".btn-primary")[1].click
        fill_in 'review_comment' ,with: 'adminによるコメント記載'
        click_on '送信'
        expect(page).to have_content 'adminによるコメント記載'
        expect(page).to have_content 'admin_user'
      end
    end
  end
end