class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save
      redirect_to @room, notice: "Saved"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to @room, notice: "Updated..."
    else
      render :edit
    end
  end

  def destroy
    @room.destroy
    redirect_to dashboard_path
  end

  private
  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:title, :address, :description, :capacity, :booking_id, :user_id, :availability_start, :availability_end, :image_url)
  end
end
