require 'rails_helper'

RSpec.describe 'ログイン機能', type: :system  do
  let!(:user) { FactoryBot.create(:user01) }
  describe 'user01が' do
    context 'ログインした場合'
      it 'サブスクリプション画面が表示されること' do
        visit new_session_path
        fill_in 'Email' ,with: 'user01@example.com'
        fill_in 'Password',with:'password'
        click_button 'ログイン'
        expect(page).to have_content 'サブスクリプション'
      end
    context 'ログアウトした場合'
    it 'トップ画面が表示されること' do
      visit new_session_path
      fill_in 'Email' ,with: 'user01@example.com'
      fill_in 'Password',with:'password'
      click_button 'ログイン'
      click_link 'menu'
      click_on 'ログアウト'
      expect(page).to have_content 'ログイン'
    end

  end
end