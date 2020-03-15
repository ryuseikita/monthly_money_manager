class CancellationMailer < ApplicationMailer
    layout 'mailer'
    def cancellation_email(permanth)
        @service = permanth.service.name
        @user = permanth.user
        mail to: @user.email, subject: '[通知]今月の登録金額'
    end
end
