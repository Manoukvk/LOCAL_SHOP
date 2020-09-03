class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :initialize_session
  before_action :initialize_cart

  def initialize_cart
    @cart = Order.find(session[:order_id])
    @cart_amount = 0
    @cart.order_products.each do |product|
      @cart_amount += product.quantity
    end
  end

  def initialize_session
    session[:order_id] ||= Order.create(status: "pending").id
  end
end
