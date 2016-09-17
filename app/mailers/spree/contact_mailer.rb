module Spree
  class ContactMailer < Spree::BaseMailer
    default from: 'me@gmail.com'
    # layout 'mailer'

    def contact_email(contact)
      @contact = contact
      mail(to: 'me@gmail.com', subject: 'Welcome to Toys')
    end
  end
end