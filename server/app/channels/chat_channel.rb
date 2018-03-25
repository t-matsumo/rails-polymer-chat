class ChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    p "conected!!"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(message)
    p message
  end
end
