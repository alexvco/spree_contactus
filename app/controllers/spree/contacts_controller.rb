class Spree::ContactsController < Spree::StoreController
  def new
    @contact = Spree::Contact.new(contact_params)
  end

  def create
    @contact = Spree::Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Thank you very much'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :phone, :message)
  end

end


