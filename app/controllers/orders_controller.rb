class OrdersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create, :show ]

  def create
    @order = Order.create(status: "pending", total: 0)
  end

  def show
    @order = Order.find(params[:id])
    @items = OrderProduct.where(order_id: @order.id)
    @total = @order.total
    if params[:status] == "paid"
      flash[:notice] = "Thank you for your order!"
      if @order.status != "paid"
        @order.status = "paid"
        @order.save
        session[:order_id] = Order.create(status: "pending").id
      end
    end
  end

  def purchase
      if Order.find(params[:order_id]).user.nil?
        Order.find(params[:order_id]).update(user: current_user)
      end
    @order = Order.find(params[:order_id])
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Your selected items",
        amount:  @order.total_cents,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(@order, status: "paid"),
      cancel_url: order_url(@order)
    )

    @order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(@order)
  end
end
