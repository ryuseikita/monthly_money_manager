require 'rails_helper'

RSpec.describe 'ユーザ管理機能', type: :system , js: true do
  let!(:admin) { FactoryBot.create(:admin_user,id: 1) }
  let!(:user) { FactoryBot.create(:user01) }
  let!(:music){ FactoryBot.create(:service01,user_id: admin.id)}
  before do
    visit new_session_path
    fill_in 'session[email]' ,with: 'admin_user@example.com'
    fill_in 'session[password]',with:'password'
    click_button 'ログイン'
    click_on 'menu'
    click_on 'ユーザ管理'
  end
  describe 'ユーザ検索にて' do
    context 'user01を検索した場合' do
      it 'user01のみ表示されること' do
        fill_in 'search' ,with: 'user01'
        click_on '検索'
        expect(page).to have_content 'user01@example.com'
        expect(page).to_not have_content 'admin_user@example.com'
      end
    end
  end
  describe 'コメント権限の操作にて' do
    context 'user01を無効にした場合' do
      it 'user01が既存サービスのコメントができなくなること' do
        fill_in 'search' ,with: 'user01'
        click_on '検索'
        click_link "無効"
        page.accept_confirm
        click_on 'menu'
        click_on 'ログアウト'
        fill_in 'session[email]' ,with: 'user01@example.com'
        fill_in 'session[password]',with:'password'
        click_button 'ログイン'
        click_on 'menu'
        click_on 'サービス一覧'
        find(".btn-primary").click
        fill_in 'review_comment' ,with: 'user01によるコメント記載'
        click_on '送信'
        expect(page).to_not have_content 'user01によるコメント記載'
      end
    end
  end
end