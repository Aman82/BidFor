class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def new
    @sales = Sale.new
  end

  def show
    @sales = Sale.find(params[:id])
  end

  def create
    @sales = Sale.new(require_params)
    if @sale.save
      redirect_to @sale
    else
      render new
    end
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def update
    @sale = Sale.find(params[:id])
      if @sale.update_attributes(require_params)
        redirect_to @sale
      else
        render 'edit'
      end
  end

  def destroy
    @sale = Sale.find(params[:id])
    if @sale.destroy
      redirect_to @sale
    else
      render @sale
    end
  end

  private

  def require_params
    params.require(:sale).permit(:winning_bid, :saller_approval, :buyer_acceptance, :completion_date)
  end

end

