class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_order
  def current_order
    @cart = Order.find_by(user: current_user, status: "pending")
    @cart_amount = 0
    @cart.order_products.each do |product|
      @cart_amount += product.quantity
    end
  end
end

