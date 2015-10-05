class FaresController < ApplicationController
  def index
    @fares = Fare.all
  end

  def show
    @fare = Fare.find(params[:id])
  end

  def new
    @fare = Fare.new
  end

  def create
    @fare = Fare.new(fare_params)
    if @fare.save
      redirect_to fares_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def fare_params
    params.require(:fare).permit(:destination, :from, :time, :price)
  end
end
