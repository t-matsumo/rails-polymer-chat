class RoomsController < ApplicationController
  def index
    render json: Room.all
  end

  def show
    render json: Room.find(params[:id])
  end

  def create
    render json: Room.create!(room_params)
  end

  def update
    room = Room.find params[:id]
    room.update! room_params
  end

  def destroy
    room = Room.find params[:id]
    room.destroy
  end

  private
    def room_params
      params.require(:room).permit(:name)
    end
end
