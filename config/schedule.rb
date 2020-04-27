ENV.each { |k, v| env(k, v) } 

set :output, 'log/crontab.log'
ENV['RAILS_ENV'] ||= 'production'
set :environment, ENV['RAILS_ENV']

# crontab型の設定「分」「時」「日」「月」「曜日」
every '0 8 25 * *' do
   rake 'notification:permanth_money'
end

every 1.day, at: '8:00 am' do
  rake 'notification:cancellation_service'
end