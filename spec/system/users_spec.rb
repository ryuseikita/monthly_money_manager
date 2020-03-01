require 'rails_helper'

RSpec.describe 'ログイン機能', type: :system do
  let!(:user) { FactoryBot.create(:user01) }
  describe 'A' do
    context 'Aログインできること'
    it 'Aがログインできること' do
      visit new_session_path
      fill_in 'Email' ,with: 'user01@example.com'
      fill_in 'Password',with:'password'
      click_button 'ログイン'
      expect(page).to have_content 'サブスクリプション'
    end


  end
end