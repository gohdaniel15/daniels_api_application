class OrdersController < ApplicationController

  def index
    @delivery_orders = DeliveryOrder.all
  end

  def show
    @delivery_order = DeliveryOrder.find(params[:id])
  end

end
