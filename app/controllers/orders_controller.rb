class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create, :show ]

  def create
    @order = Order.create(user: current_user, status: "pending", total: 0)
   
  end

  def show
    @order = Order.find(params[:id])
    @items = OrderProduct.where(order_id: @order.id)
    @total = @order.total
  end

  def purchase
    @order = Order.find(params[:order_id])
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Your selected items",
        amount:  @order.total_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    ) 

    @order.update(checkout_session_id: session.id)
  redirect_to order_path(@order)
  end
 
end