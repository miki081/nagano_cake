class CustomersController < ApplicationController
 def show
    @customer = Customer.find(params[:id])
    @customer = current_customer

 end
 def edit
  @customer = Customer.find(params[:id])
 end

def create
  @Customer = Customer.new(customer_params)

  if @customer.save
    flash[:success] = '新しいユーザーを登録しました。'
    redirect_to @customer
  else
    flash.now[:danger] = 'ユーザーの登録に失敗しました。'
    render :new
  end
end


def update
   @customer = current_customer
    if @customer.update(customer_params)
        redirect_to customer_path(@customer)
    else
        render 'index'
    end
end



private

def customer_params
params.require(:customer).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :email, :address, :telephone_number)
end
end