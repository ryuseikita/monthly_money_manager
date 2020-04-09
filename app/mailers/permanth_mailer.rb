class PermanthMailer < ApplicationMailer
    layout 'mailer'
    def permanth_email(user,sum)
        @user = user
        @money = sum
        @url  = 'http://example.com/login'
        mail to: @user.email, subject: '[通知]今月の登録金額'
    end

    def permanth_test_email(user,sum,email)
        @user = user
        @money = sum
        mail to: email, subject: '[通知]今月の登録金額'
    end
end
