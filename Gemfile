source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.3'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'unicorn'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap','~> 4.3.1'
gem 'jquery-rails'
#画像アップロードgem
gem 'carrierwave'
gem 'fog-aws'
#envファイル読み出し用
gem 'dotenv-rails'
#cron
gem 'whenever'
#カレンダー装飾用
gem 'bootstrap4-datetime-picker-rails'
gem 'momentjs-rails'
gem 'font-awesome-rails'
#ページネーション
gem 'kaminari'
gem 'aws-sdk-rails'
gem 'factory_bot_rails'
gem 'faker'



group :development, :test do
  gem 'pry-byebug'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'letter_opener_web'
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'launchy'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'puma'
  gem 'capybara'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
