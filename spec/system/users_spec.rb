require 'rails_helper'

RSpec.describe 'ログイン機能', type: :system do
  let!(:user) { FactoryBot.create(:user01) }
  describe 'user01が' do
    context 'ログインした場合'
      it '「user01」ヘッダーに表示されていることを確認する' do
        visit new_session_path
        fill_in 'session[email]' ,with: 'user01@example.com'
        fill_in 'session[password]',with:'password'
        click_button 'ログイン'
        expect(page).to have_content 'user01'
      end
    context 'ユーザ'
    it '「user01」ヘッダーに表示されていることを確認する' do
      visit new_session_path
      fill_in 'session[email]' ,with: 'user01@example.com'
      fill_in 'session[password]',with:'password'
      click_button 'ログイン'
      expect(page).to have_content 'user01'
    end

  end
end