# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application
Devise.setup do |config|
    config.omniauth :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], skip_jwt: true
end