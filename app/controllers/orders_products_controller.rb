class OrdersProductsController < ApplicationController
    before_action :set_order, only: :create
    skip_before_action :authenticate_user!, only: [ :create, :destroy ]

    def create
        product = Product.find(params[:product_id])
        if OrderProduct.find_by(order: @order, product: product)
          order_product = OrderProduct.find_by(order: @order, product: product)
          order_product.price = product.price
          order_product.quantity += 1
          order_product.save!
        else
          OrderProduct.create!(order: @order, product: product, quantity: 1, price: product.price)
        end
        @order.total += product.price
        @order.save!
        redirect_to request.referrer, notice: "Your item has been added to your cart!"
    end

    def destroy
        #first retrive the order product id the params
        @orderproduct = OrderProduct.find(params[:id])
        @order = @orderproduct.order
        @order.update(total: @order.order_products.sum(&:price))
        @orderproduct.destroy
        redirect_to @order
    end

    private
    def set_order
        @order = Order.find(session[:order_id])
        @order ||= Order.find_by(user: current_user, status: "pending")
        unless @order
            @order = Order.new(user: current_user, status: "pending")
            @order.save
        end
        rescue ActiveRecord::RecordNotFound
            @order = Order.create
    end
end
