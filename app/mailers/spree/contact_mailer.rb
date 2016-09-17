module Spree
  class ContactMailer < Spree::BaseMailer
    default from: "centerfortoys@gmail.com"
    # layout 'mailer'

    def contact_email(contact)
      @contact = contact
      mail(to: "centerfortoys@gmail.com", subject: 'Thank you for contacting Center for Toys')
    end
  end
end