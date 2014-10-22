class BidsController < ApplicationController
  def index
    @bids = Bid.all
  end

  def new
    @bids = Bid.new
  end

  def show
    @bids = Bid.find(params[:id])
  end

  def create
    @bids = Bid.new(require_params)
    if @bid.save
      redirect_to @bid
    else
      render new
    end
  end

  def edit
    @bid = Bid.find(params[:id])
  end

  def update
    @bid = Bid.find(params[:id])
      if @bid.update_attributes(require_params)
        redirect_to @bid
      else
        render 'edit'
      end
  end

  def destroy
    @bid = Bid.find(params[:id])
    if @bid.destroy
      redirect_to @bid
    else
      render @bid
    end
  end

  private

  def require_params
    params.require(:bid).permit(:timestamp, :bid_amount, :bid_change, :bid_fee)
  end

end
