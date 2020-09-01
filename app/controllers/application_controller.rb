class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :current_order
  def current_order
    @cart = Order.find_by(user: current_user, status: "pending")
    unless @cart
      @cart = Order.new(user: current_user, status: "pending")
      @cart.save
    end
    @cart
  end
end
