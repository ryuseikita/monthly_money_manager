class ResetPasswordMailer < ApplicationMailer
  default from: 'monthly_monery_manager@belldra.com'
    layout 'mailer'
    def reset_password(user,password)
        @user = user
        @password = password
        mail to: @user.email, subject: '[M3]初期パスワード通知'
    end
end
