class ChatChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find(params[:id])
    stream_for room
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(message)
    room = Room.find(params[:id])
    ChatChannel.broadcast_to(room, message)
  end
end
