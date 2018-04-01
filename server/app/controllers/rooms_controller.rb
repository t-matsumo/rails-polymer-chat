class RoomsController < ApplicationController
  def index
    render json: Room.all
  end

  def show
    render json: Room.find(params[:id])
  end

  def create
    room = Room.new(room_params)
    room.save!
    render json: room
    end
  end

  def update
    room = Room.find(params[:id])
    room.update!(article_params)
    render :json room
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    render :json room
  end

  private
    def room_params
      params.require(:room).permit(:name)
    end
end
