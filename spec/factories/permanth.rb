FactoryBot.define do
  factory :test_permanth01 , class: Permanth do
    registration { "#{Date.today}" }
    cancellation { "#{Date.today.tomorrow}" }
  end

  factory :test_permanth02 , class: Permanth do
    registration { "#{Date.today}" }
    cancellation { "#{Date.today.tomorrow}" }
  end
end