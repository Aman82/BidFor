class SallersController < ApplicationController
  
  def index
    @sallers = Saller.all
  end

  def new
    @sallers = Saller.new
  end

  def show
    @sallers = Saller.find(params[:id])
  end

  def create
    @sallers = Saller.new(require_params)
    if @saller.save
      redirect_to @saller
    else
      render new
    end
  end

  def edit
    @saller = Saller.find(params[:id])
  end

  def update
    @saller = Saller.find(params[:id])
      if @saller.update_attributes(require_params)
        redirect_to @saller
      else
        render 'edit'
      end
  end

  def destroy
    @saller = Saller.find(params[:id])
    if @saller.destroy
      redirect_to @saller
    else
      render @saller
    end
  end

  private

  def require_params
    params.require(:saller).permit(:items_listed, :items_active, :last_activity)
  end
end
