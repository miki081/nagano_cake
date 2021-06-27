class ItemsController < ApplicationController

def show
  @item = Item.find(params[:id])
  @item = @current_customer.item
end

def index
  @items = Item.all
end

   private
end
