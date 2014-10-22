class CarsController < ApplicationController
  
respond_to :html, :json
  def index
      @cars = Car.all
      # respond_to @cars
  end

  def new
       @car = Car.new
       # @poll = Poll.find(params[:id])
  end

  def show
      @car = Car.find(params[:id])
      @user = User.new
  end
 
  def create
     @car = Car.new(params.require(:car).permit(:make, :model, :year, :trim, :mileage, :price, :transmission, :colour, :title, :avtar))
     if @car.save
          redirect_to @car
     else
          render 'new'
     end
  end

  def edit
        @car = Car.find(params[:id])
        # @poll = Poll.find(params[:id])
  end

  def update
      @car = Car.find(params[:id])
      if @car.update_attributes(params.require(:car).permit(:make, :model, :year, :trim, :mileage, :transmission, :color, :title, :avtar))
          redirect_to @car
      else
          render 'edit'
      end
  end

  def destroy
       @car = Car.find(params[:id])
        @car.destroy
        redirect_to cars_path
  end
  private

  def required_params
    params.require(:car).permit(:make, :model, :year, :trim, :mileage, :transmission, :color, :title, :avtar)
  end
end
