FactoryBot.define do
  factory :user01_coment , class: Review do
    comment { 'いいね' }
  end

  factory :admin_coment , class: Review do
    comment { '値段が高いね' }
  end
end