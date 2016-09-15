module Spree
  ContactsController.class_eval do
    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        redirect_to root_path, notice: 'Thank you very much'
      else
        render :new
      end
    end
    
  end
end


