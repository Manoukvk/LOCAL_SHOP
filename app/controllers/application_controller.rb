class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_order
  def current_order
    @cart = Order.find_by(status: "pending")
     @cart_amount = 0
    unless @cart
      @cart = Order.new(user: current_user, status: "pending", total: 0)
      @cart.save
    end
      @cart.order_products.each do |product|
        @cart_amount += product.quantity
      end
    @cart
  end
end
