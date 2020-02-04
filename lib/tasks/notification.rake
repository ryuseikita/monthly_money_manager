namespace :notification do
    desc "課金額を通知"
    task permanth_money: :environment do
        @users = User.all
        @users.each do |user|
            permanths = user.permanths
            @sum=0
            permanths.each do |permanth|
                @sum = @sum + permanth.service.money
            end
            PermanthMailer.permanth_email(user,@sum).deliver
        end
    end
end