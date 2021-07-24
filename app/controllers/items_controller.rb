class ItemsController < ApplicationController

def show
  @item = Item.find(params[:id])
  
end

def index
  @items = Item.all
  # render :index
end

   private
end
