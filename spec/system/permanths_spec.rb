require 'rails_helper'

RSpec.describe '加入サービス登録機能', type: :system , js: true do
  let!(:user) { FactoryBot.create(:user01, id: 1) }
  let!(:service01){ FactoryBot.create(:service01,user_id: user.id)}
  let!(:service02){ FactoryBot.create(:service02,user_id: user.id)}
  before do
    visit new_session_path
    fill_in 'session[email]' ,with: 'user01@example.com'
    fill_in 'session[password]',with:'password'
    click_button 'ログイン'
    visit new_permanth_path
  end
  describe 'user01が' do
    context '加入サービスを登録した場合' do
      it '登録後、一覧画面に表示され,合計金額が表示されていること' do
        fill_in 'search' ,with: 'music'
        click_on '検索'
        find('.option-input').click
        fill_in 'registration',with: Date.today
        fill_in 'cancellation', with: Date.today.tomorrow
        click_button '登録'
        expect(page).to have_content 'XXXXX_music'
        expect(page).to have_content '1000'
      end
    end
  end
end