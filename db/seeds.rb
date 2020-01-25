User.create!(name: 'admin',
               email: 'admin@example.com',
               password: 'password',
               password_confirmation: 'password',
               admin_flag: true
            )
Delivery.create!(user_id: 1
                )