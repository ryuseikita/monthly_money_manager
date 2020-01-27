class PermanthMailer < ApplicationMailer

    def permanth_email(user)
        @user = user
        @url  = 'http://example.com/login'
        mail to: @user.email, subject: '[通知]今月の登録金額'
    end
end
