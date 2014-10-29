class ItemsController < ApplicationController
  def index
    #@bid = Bid.new
    @items = Item.all
  end

  def new
     @bid = Bid.new
    @item = Item.new
  end

  def show
     @bid = Bid.new
    @item = Item.find(params[:id])
  end

  def create
    @item = Item.new(params.require(:item).permit(:item_name, :item_status, :asking_price, :notify_price, :listing_date, :expiration_date, :description, :avatar))
    if @item.save
      redirect_to @item
        flash[:notice] = "New Item Created!"
    else
      render new
    end
  end

  
   
  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
      if @item.update_attributes(params.require(:item).permit(:item_name, :item_status, :asking_price, :notify_price, :listing_date, :expiration_date, :description, :avatar))
        redirect_to @item
      else
        render 'edit'
      end
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      redirect_to @item
    else
      render @item
    end
  end

  private

  def require_params
    (params.require(:item).permit(:item_name, :item_status, :asking_price, :notify_price, :listing_date, :expiration_date, :description, :avatar))
  end

end
