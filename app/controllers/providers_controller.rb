class ProvidersController < ApplicationController
  def new
    @provider = Provider.new
  end

  def index
    @providers = Provider.all
  end

  def edit
    @provider = Provider.find(params[:id])
  end

  def view
    @provider = Provider.find(params[:id])
    @contacts = Provider.find(params[:id]).contacts
  end
  
  def patch
    p = Provider.find params[:provider][:id]
    if p.update_attributes provider_update_attributes
      flash[:success] = "Updated Provider"
      redirect_to providers_view_path(id: params[:provider][:id])
    else
      flash.now[:error] = p.errors.messages.each.map { |key,value| value }.join('<br>').html_safe
      @provider = p
      render 'edit'
    end
  end
  
  def delete
    p = Provider.find(params[:id])
    if p.destroy
      redirect_to providers_index_path
    else
      redirect_to providers_view_path(id: p.id)
    end
  end
  
  def create
    p = Provider.new provider_create_params
    if p.save
      redirect_to providers_index_path
    else
      flash.now[:error] = p.errors.messages.each.map { |key,value| value }.join('<br>').html_safe
      @provider = p
      render 'new'
    end
  end
  
  private
  def provider_create_params
    params.require(:provider).permit(:name,:address,:city,:zip,:category_id,:charge_code)
  end
  
  def provider_update_attributes
     params.require(:provider).permit(:name,:address,:city,:zip,:category_id,:charge_code)
  end
end
