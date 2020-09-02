class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :current_order
  def current_order
    @cart = Order.find_by(user: current_user, status: "pending")
     @cart_amount = 0
      @cart.order_products.each do |product|
        @cart_amount += product.quantity
      end
    unless @cart
      @cart = Order.new(user: curren_user, status: "pending", total: 0)
      @cart.save
    end
    @cart
  end
end



