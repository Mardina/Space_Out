class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_booking, only: [ :new, :create, :show ]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = current_user.bookings.build
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.booking = Booking.find(params[:booking_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/show'
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: "Updated..."
    else
      render :edit
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params[:booking].permit(:user_id, :room_id, :booking_start, :booking_end)
  end
end
