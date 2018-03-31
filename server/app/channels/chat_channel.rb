class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from params["room"]
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(message)
    ActionCable.server.broadcast params["room"], message
  end
end
