class MessagesController < ApplicationController
  def index
    room = Room.find params[:room_id]
    render json: room.messages
  end

  def show
    render json: Message.find(params[:id])
  end

  def create
    room = Room.find params[:room_id]
    render json: room.messages.create!(message_params)
  end

  def update
    message = Message.find params[:id]
    message.update! message_params
  end

  def destroy
    message = Message.find params[:id]
    message.destroy
  end

  private
    def message_params
      params.require(:message).permit(:body)
    end
end
