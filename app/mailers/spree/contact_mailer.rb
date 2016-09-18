module Spree
  class ContactMailer < Spree::BaseMailer
    default from: "centerfortoys@gmail.com"
    # layout 'mailer'

    def contact_email(contact)
      @contact = contact
      array_email = ['centerfortoys@gmail.com', 'playm3n@hotmail.com']
      mail(to: array_email, subject: 'Thank you for contacting Center for Toys', bcc: "v.a_l_e_x@yahoo.com", reply_to: "alexvarjabedian7@gmail.com")
    end
  end
end