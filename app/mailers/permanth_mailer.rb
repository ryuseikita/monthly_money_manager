class PermanthMailer < ApplicationMailer
    default from: 'monthly_monery_manager@example.com'
    layout 'mailer'
    def permanth_email(user,sum)
        @user = user
        @money = sum
        @url  = 'http://example.com/login'
        mail to: @user.email, subject: '[通知]今月の登録金額'
    end
end
