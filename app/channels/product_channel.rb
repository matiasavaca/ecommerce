class ProductChannel < ApplicationCable::Channel
  def subscribed
    stream_from "product_#{params[:room]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
