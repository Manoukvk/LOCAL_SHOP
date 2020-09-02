class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = Order.create(user: current_user, status: "pending", total: 0)
  end

  def show
    @order = Order.find(params[:id])
    @items = OrderProduct.where(order_id: @order.id)
    @total = @order.total
  end
end
