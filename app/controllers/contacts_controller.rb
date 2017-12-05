class ContactsController < ApplicationController
  def new
    @orig_provider_id = params[:id]
    @contact = Contact.new
  end

  def edit
  end

  def index
  end

  def delete
  end

  def create
    contact = Contact.new contacts_create_params
    if contact.save
      @orig_provider_id = contact.provider_id
      #@contacts = Contacts.find_by(provider_id: @orig_provider_id)
      #puts @contact
      redirect_to providers_view_path(id: @orig_provider_id)
    else
      @contact = contact
      render 'new'
    end
  end

  def destroy
  end
  
  def view
    @contact = Contact.find(params[:id])
  end
  
  private
  def contacts_create_params
    params.require(:contact).permit(:provider_id,
:title,
:first_name,
:middle_name,
:last_name,
:year_of_registration,
:years_of_experience,
:registration_number,
:qualification,
:clinic_name,
:service_type,
:session_rate,
:rating,
:external_notes,
:address,
:location,
:state,
:landmark,
:city,
:zip,
:email,
:contact_number,
:alternate_number,
:mobile)
  end
  
end
