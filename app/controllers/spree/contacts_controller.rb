module Spree
  class ContactsController < Spree::StoreController
    def new
      @contact = Contact.new
    end

    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        # ContactMailer.contact_email(@contact).deliver
        redirect_to root_path, notice: 'Thank you very much'
      else
        render :new
      end
    end

    private

    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :message)
    end
  end
end


