module Spree
  class ContactMailer < Spree::BaseMailer
    default from: "#{ENV['TOY_EMAIL']}"
    # layout 'mailer'

    def contact_email(contact)
      @contact = contact
      mail(to: "#{ENV['TOY_EMAIL']}", subject: 'Thank you for contacting Center for Toys')
    end
  end
end