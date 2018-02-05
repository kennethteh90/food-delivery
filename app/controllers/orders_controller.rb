class OrdersController < ApplicationController

  def index
   orders = DeliveryOrder.all
   render json: orders
  end

  def show
    order = DeliveryOrder.find(params[:id])
    render json: order
  end

end
