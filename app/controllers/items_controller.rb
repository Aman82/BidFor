class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @items = Item.new
  end

  def show
    @items = Item.find(params[:id])
  end

  def create
    @items = Item.new(require_params)
    if @item.save
      redirect_to @item
    else
      render new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
      if @item.update_attributes(require_params)
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
    params.require(:item).permit(:item_name, :item_status, :acking_price, :notify_price, :expiration_date, :description, :avatar)
  end

end
