class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_booking, only: [ :show, :destroy ]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @room = Room.find(params[:room_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = Room.find(params[:room_id])
    if @booking.save
      redirect_to dashboard_path
    else
      render 'bookings/new'
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Updated..."
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params[:booking].permit(:user_id, :room_id, :booking_start, :booking_end)
  end
end
