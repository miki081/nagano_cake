class HomesController < ApplicationController
  def top
  end

  def about
  end
  
  def unsubscribe
    @customer = Customer.find_by(name: params[:email])
  end

  def withdraw
    @customer = Customer.find_by(name: params[:email])
    @customer.update(is_valid: false)
    reset_session
    redirect_to root_path
  end
end
