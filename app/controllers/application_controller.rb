class ApplicationController < ActionController::Base
  before_action :authenticate_user! 
  before_action :current_order
  def current_order
    @cart = Order.find_by(user: current_user, status: "pending")
    unless @cart
      @cart = Order.new(user: current_user, status: "pending", total: 0)
      @cart.save
    end
    @cart
  end
end
