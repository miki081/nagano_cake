class CustomersController < ApplicationController
  def new
    @Customer = Customer.new
    @customer = Customer.all
  end
end

