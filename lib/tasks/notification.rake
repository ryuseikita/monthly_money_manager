namespace :notification do
  desc "月額金額のメール通知"
  task permanth_money: :environment do
    ### テストユーザには通知しない。
    @users = User.where.not("email LIKE '%example%'" )
    @users.each do |user|
      permanths = user.permanths
      @sum=0
      permanths.each do |permanth|
        @sum = @sum + permanth.service.money
      end
      PermanthMailer.permanth_email(user,@sum).deliver
    end
  end

  desc "解約予定日の通知"
  task cancellation_service: :environment do
    @users = User.where.not("email LIKE '%example%'" )
    @users.each do |user|
      @permanth = user.permanths.where(cancellation: Date.today+1 )
      @permanth.each do |permanth|
        CancellationMailer.cancellation_email(permanth).deliver
      end
    end
  end
end