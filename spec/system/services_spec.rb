require 'rails_helper'

RSpec.describe '既存サービス機能', type: :system , js: true do
  let!(:user) { FactoryBot.create(:admin_user,id: 1 )}
  let!(:music){ FactoryBot.create(:service01,user_id: user.id)}
  let!(:Hulu){ FactoryBot.create(:service02,user_id: user.id)}
  before do
    visit new_session_path
    fill_in 'session[email]' ,with: 'admin_user@example.com'
    fill_in 'session[password]',with:'password'
    click_button 'ログイン'
    click_on 'menu'
    click_on 'サービス一覧'
  end
  describe 'サービス検索で' do
    context 'musicを検索した場合' do
      it 'musicのみ表示されること' do
        fill_in 'search' ,with: 'music'
        click_on '検索'
        expect(page).to have_content 'XXXXX_music'
        expect(page).to_not have_content 'Hulu'
      end
    end
  end
  describe '管理者権限にて' do
    context '既存サービスを登録した場合' do
      it '一覧画面に表示されること' do
        click_on 'menu'
        click_on 'サブスク登録'
        fill_in 'service_name' ,with: 'NETFLIX_新規'
        fill_in 'service_money' ,with: '1000'
        fill_in 'service_details' ,with: 'サービス概要'
        click_on '登録'
        expect(page).to have_content 'NETFLIX_新規'
      end
    end
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