set :output, 'log/crontab.log'
ENV['RAILS_ENV'] ||= 'development'
set :environment, ENV['RAILS_ENV']

# crontab型の設定「分」「時」「日」「月」「曜日」
every '0 12 27 * *' do
   rake 'notification:permanth_money'
end

every 1.day, at: '8:00 am' do
  rake 'notification:cancellation_service'
end