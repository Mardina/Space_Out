class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @rooms = Room.all
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user)
    @rooms = Room.where(user_id: current_user)
  end
end
