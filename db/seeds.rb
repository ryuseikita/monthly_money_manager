require "csv"

CSV.foreach('db/csv/service_index.csv', headers: true) do |row|
  Service.create(
    name: row['name'],
    money: row['money'],
    details: row['details'],
    user_id: row['user_id']
  )
end

User.create!(name: 'admin',
               email: 'admin@example.com',
               password: 'password',
               password_confirmation: 'password',
               admin_flag: true
            )
Delivery.create!(user_id: 1
                )
User.create!(name: 'testuser',
                email: 'testuser@example.com',
                password: 'password',
                password_confirmation: 'password',
             )
Delivery.create!(user_id: 2
                )

20.times do |n|
    name = Faker::Name.name
    email = "testuser#{n+2}@example.com"
    password = "password"
    User.create!(name:  name,
                email:  email,
                password:               password,
                password_confirmation:  password
                )
end

100.times do |n|
  number = "#{rand(3)+1}"
  if number == "1"
    tmp = "高い"
  elsif number == "2"
    tmp = "安い"
  else
    tmp = "いいね！"
  end
  comment = tmp
  user_id = "#{rand(20)+3}"
  service_id = "#{rand(23)+1}"
  Review.create!(user_id:    user_id,
                service_id:  service_id,
                comment:     comment
                )
end




