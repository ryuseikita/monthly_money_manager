require "csv"

CSV.foreach('db/csv/service_index.csv', headers: true) do |row|
  Service.create(
    name: row['name'],
    money: row['money'],
    details: row['details'],
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
                email: 'ryslsuzuki@gmail.com',
                password: 'password',
                password_confirmation: 'password',
             )
 Delivery.create!(user_id: 2
                 )
 
