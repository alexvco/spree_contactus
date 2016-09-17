require 'rails/all'
require 'action_mailer'

module Spree
  class ContactMailer < Spree::BaseMailer

    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => "utf-8"
    config.action_mailer.default content_type: "text/html"
    host = 'alexmystore.herokuapp.com'
    config.action_mailer.default_url_options = { host: host }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address:              "smtp.sendgrid.net",
      port:                 '587',
      domain:               'heroku.com',
      user_name:            ENV['SENDGRID_USERNAME'],
      password:             ENV['SENDGRID_PASSWORD'],
      authentication:       :plain,
      enable_starttls_auto: true 
    }
  end
end 
