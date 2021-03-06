class Admins::ItemsController < ApplicationController
 before_action :authenticate_admin!
 
 
 def index
  # @items = Item.page(params[:page]).per(10)
  @items = Item.all
 
 end
 
 def edit
    @item = Item.find(params[:id])
 end
 def show
    @item = Item.find(params[:id])
 end

 def new
  @item = Item.new
 end

 def update
   @item = Item.find(params[:id])
   if @item.update(item_params)
    redirect_to admins_item_path(@item)
   else
    flash[:item_update] = "error"
    redirect_to edit_admins_item_path(@item)
   end
 end
 
 def create
   @item = Item.new(item_params)
   if @item.save
    redirect_to admins_item_path
   else
    flash[:item_create] = "error"
    redirect_to new_admins_item_path
   end
 end

  private

  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id, :price, :gender, :image)
  end
end