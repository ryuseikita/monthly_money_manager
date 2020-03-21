require 'rails_helper'

RSpec.describe 'ログイン機能', type: :system , js: true do
  let!(:user) { FactoryBot.create(:user01) }
  describe 'user01が' do
    context 'ログインした場合' do
      it '加入サービス一覧画面が表示されること' do
        visit new_session_path
        fill_in 'session[email]' ,with: 'user01@example.com'
        fill_in 'session[password]',with:'password'
        click_button 'ログイン'
        expect(page).to have_content '加入サービス一覧'
      end
      it 'user01のページであること' do
        visit new_session_path
        fill_in 'session[email]' ,with: 'user01@example.com'
        fill_in 'session[password]',with:'password'
        click_button 'ログイン'
        expect(page).to have_content 'user01'
      end
    end
    context 'ログアウトした場合' do
      it 'トップ画面が表示されること' do
        visit new_session_path
        fill_in 'session[email]' ,with: 'user01@example.com'
        fill_in 'session[password]',with:'password'
        click_button 'ログイン'
        click_on 'menu'
        click_on 'ログアウト'
        expect(page).to have_content 'ログイン'
      end
    end
  end
end