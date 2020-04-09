FactoryBot.define do
  factory :user01 , class: User do
    name { 'user01' }
    email { 'user01@example.com' }
    password { 'password' }
    password_confirmation { 'password' }
    admin_flag { 'false' }
  end

  factory :admin_user , class: User do
    name { 'admin_user' }
    email { 'admin_user@example.com' }
    password { 'password' }
    password_confirmation { 'password' }
    admin_flag { 'true' }
  end
end