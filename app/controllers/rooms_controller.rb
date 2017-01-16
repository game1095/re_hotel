class RoomsController < ApplicationController

  before_action :authenticate_manager!

  def index
    @rooms = Room.all.order("created_at DESC")
  end

  def show
    @rooms = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render 'new'
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to rooms_path
    else
      render 'edit'
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    redirect_to rooms_path
  end

  private

  def room_params
    params.require(:room).permit(:room_number , :room_price , :room_des)
  end
end
