class BookingsController < ApplicationController
  def index
    @fare = Fare.find(params[:fare_id])
    @bookings = @fare.bookings
  end

  def show
    @fare = Fare.find(params[:fare_id])
    @booking = @fare.bookings.find(params[:id])
  end

  def new
    @fare = Fare.find(params[:fare_id])
    @booking = @fare.bookings.new
  end

  def create
    @fare = Fare.find(params[:fare_id])
    @bookings = @fare.bookings.new(bookings_params)
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

  def bookings_params
    params.require(:booking).permit(:name_of_passenger, :no_of_travellers, :no_of_child, :time_of_travel)
  end

end
