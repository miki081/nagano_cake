class AddressesController < ApplicationController
  def index
    @addresses = current_customer.addresses
    @address = Address.new
  end
  def edit
    @address =Address.find(params[:id])
  end

  def create
    address = Address.new(address_params)
    address.customer_id = current_customer.id
    address.save!
    redirect_to address_path
  end

  def update
      address = Address.find(params[:id])
       @addresses = current_customer.addresses
    if address.update(address_params)
         redirect_to addresses_path
    else
         render 'index'
    end
  end

  private

  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end


end