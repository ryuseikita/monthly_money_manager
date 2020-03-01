FactoryBot.define do
  factory :test_permanth01 , class: Permanth do
    registration { "2020-01-01 00:00:00" }
    cancellation { "2020-02-01 00:00:00" }
  end

  factory :test_permanth02 , class: Permanth do
    registration { "2020-02-02 00:00:00" }
    cancellation { "2020-03-02 00:00:00" }
  end
end