class ProvidersController < ApplicationController
  def new
    @provider = Provider.new
  end

  def view
    @provider = Provider.find(id: params[:id])
  end

  def index
    @providers = Provider.all
  end

  def edit
  end

  def view
    @provider = Provider.find(params[:id])
    #@contacts = Contacts.a
  end
  
  def create
    p = Provider.new provider_create_params
    if p.save
      redirect_to providers_index_path
    else
      @provider = p
      render 'new'
    end
  end
  
  private
  def provider_create_params
    params.require(:provider).permit(:name,:address,:city,:zip,:category_id,:charge_code)
  end
  
end
