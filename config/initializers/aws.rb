creds = Aws::Credentials.new(
  ENV['AWS_ACCESS_KEY_ID'],
  ENV['AWS_SECRET_ACCESS_KEY']
)
Aws::Rails.add_action_mailer_delivery_method(
  :aws,
    credentials: creds,
    region: 'ap-southeast-2'
)