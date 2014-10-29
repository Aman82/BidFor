class BidsController < ApplicationController

  # GET /bids
  # GET /bids.json
  
  def index
    @bids = Bid.all
    #find(:all, :order => "created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bids }
    end
  end

  # GET /bids/1
  # GET /bids/1.json
  def show
    #@item = Bid.find(params[:auction_uniq_id])

    @bid  = Bid.all
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bid }
    end
  end

  # GET /bids/new
  # GET /bids/new.json
  def new
    @bid = Bid.new
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bid }
    end
  end

  # GET /bids/1/edit
  def edit
    @bid = Bid.find(params[:id])
  end

  # POST /bids
  # POST /bids.json
  def create
   @item = Item.find_by(id: params[:auction_uniq_id])
    @bid = Bid.new(params.require(:bid).permit(:auction_uniq_id, :bid_amount))
    @item.notify_price = @bid.bid_amount
    @item.save
    respond_to do |format|
      if @bid.save
        format.html { redirect_to @bid, notice: 'Bid was successfully created.' }
        format.json { render json: @bid, status: :created, location: @bid }
      else
        format.html { render action: "new" }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bids/1
  # PUT /bids/1.json
  def update
    @bid = Bid.find(params[:id])

    respond_to do |format|
      if @bid.update_attributes(params[:bid])
        format.html { redirect_to @bid, notice: 'Bid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bids/1
  # DELETE /bids/1.json
  def destroy
    @bid = Bid.find(params[:id])
    @bid.destroy

    respond_to do |format|
      format.html { redirect_to bids_url }
      format.json { head :no_content }
    end
  end
end

  # def index
  #   @bids = Bid.all
  # end

  # def new
  #   @bids = Bid.new
  # end

  # def show
  #   @bids = Bid.find(params[:id])
  # end

  # def create
  #   @bids = Bid.new(require_params)
  #   if @bid.save
  #     redirect_to @bid
  #   else
  #     render new
  #   end
  # end

  # def edit
  #   @bid = Bid.find(params[:id])
  # end

  # def update
  #   @bid = Bid.find(params[:id])
  #     if @bid.update_attributes(require_params)
  #       redirect_to @bid
  #     else
  #       render 'edit'
  #     end
  # end

  # def destroy
  #   @bid = Bid.find(params[:id])
  #   if @bid.destroy
  #     redirect_to @bid
  #   else
  #     render @bid
  #   end
  # end

  # private

  # def require_params
  #   params.require(:bid).permit(:timestamp, :bid_amount, :bid_change, :bid_fee)
  # end

# end
