class CancellationMailer < ApplicationMailer
  default from: 'monthly_monery_manager@example.com'
    layout 'mailer'
    def cancellation_email(permanth)
        @service = permanth.service.name
        @user = permanth.user
        mail to: @user.email, subject: '[通知]今月の登録金額'
    end
end
