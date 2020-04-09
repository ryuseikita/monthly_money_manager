FactoryBot.define do
  factory :service01 , class: Service do
    name { 'XXXXX_music' }
    money { '1000' }
    details { 'アップル社の月額音楽サービス' }
  end

  factory :service02 , class: Service do
    name { 'Hulu' }
    money { '9999' }
    details { '動画配信サイト' }
  end
end