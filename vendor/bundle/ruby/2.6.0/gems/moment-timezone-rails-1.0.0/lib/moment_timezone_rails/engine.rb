require 'momentjs-rails'

module MomentTimezoneRails
  module Rails
    class Engine < ::Rails::Engine
      initializer 'moment-timezone-rails.assets.precompile' do |app|
        app.config.assets.precompile += %w[moment-timezone-with-data-2012-2022.js moment-timezone-with-data.js moment-timezone.js]
      end
    end
  end
end
