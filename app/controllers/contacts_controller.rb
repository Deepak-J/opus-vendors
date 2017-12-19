class ContactsController < ApplicationController
  def new
    @orig_provider_id = params[:id]
    @contact = Contact.new
  end

  def edit
    @contact = Contact.find(params[:id])
  end
  
  def patch
    c = Contact.find params[:contact][:id]
    if c.update_attributes contacts_update_params
      redirect_to contacts_view_path(id: params[:contact][:id])
    else
      flash.now[:error] = c.errors.messages.each.map { |key,value| value }.join('<br>').html_safe
      render 'edit'
    end
  end

  def index
  end

  def delete
    c = Contact.find(params[:id])
    if c.destroy
      redirect_to providers_view_path(id: c.provider_id)
    else
      redirect_to contacts_view_path(id: c.id)
    end
  end

  def create
    contact = Contact.new contacts_create_params
    if contact.save
      #@contacts = Contacts.find_by(provider_id: @orig_provider_id)
      #puts @contact
      redirect_to providers_view_path(id: contact.provider_id)
    else
      flash.now[:error] = contact.errors.messages.each.map { |key,value| value }.join('<br>').html_safe
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
                                    #Below fields being commented because of duplication with Provider's fields (As discussed with Varun on 30-Nov-17)
                                    #:address,
                                    #:location,
                                    #:state,
                                    #:landmark,
                                    #:city,
                                    #:zip,
                                    :email,
                                    #:contact_number,
                                    :alternate_number,
                                    :mobile)
  end
  
  def contacts_update_params
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
                                    #Below fields being commented because of duplication with Provider's fields (As discussed with Varun on 30-Nov-17)
                                    #:address,
                                    #:location,
                                    #:state,
                                    #:landmark,
                                    #:city,
                                    #:zip,
                                    :email,
                                    #:contact_number,
                                    :alternate_number,
                                    :mobile)
  end  
  
end
