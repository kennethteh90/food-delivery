class OrdersController < ApplicationController

  def index
   orders = DeliveryOrder.all
   render json: orders, root: "orders"
  end

  def show
    order = DeliveryOrder.find_by(order_id: params[:order_id])
    if order
      render json: order, root: "order"
    else head :not_found
    end
  end

end
