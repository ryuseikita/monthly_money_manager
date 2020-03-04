set :output, 'log/crontab.log'
ENV['RAILS_ENV'] ||= 'development'
set :environment, ENV['RAILS_ENV']

every 1.day, at: '1:00 am' do
   rake 'notification:permanth_money'
end

every 1.day, at: '0:00 am' do
  rake 'notification:cancellation_service'
end