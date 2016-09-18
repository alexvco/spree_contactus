require 'rails/all'
require 'action_mailer'

module Spree
  class ContactMailer < Spree::BaseMailer

    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => "utf-8"
    config.action_mailer.default content_type: "text/html"
    # config.action_mailer.default_url_options = { host: ENV['HOST'] }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      # address:              "smtp.gmail.com",
      # port:                 '587',
      # domain:               'mail.google.com',
      # user_name:             ENV['TOY_EMAIL'],
      # password:              ENV['TOY_PASS'],
      # authentication:       :plain,
      # enable_starttls_auto: true 
    }
  end
end 
 