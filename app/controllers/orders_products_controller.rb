class OrdersProductsController < ApplicationController
    before_action :set_order, only: :create

    def create
        product = Product.find(params[:product_id])
        OrderProduct.create(order: @order, product: product, quantity: 1)
        redirect_to products_path, notice: "Your product has been added to your cart!"
    end

    def destroy
        #first retrive the order product id the params 
        @orderproduct = OrderProduct.find(params[:id])
        @orderpoduct.destroy
    end

    private
    def set_order
        @order = Order.find_by(user: current_user, status: "pending")
        unless @order
            @order = Order.new(user: current_user, status: "pending")
            @order.save
        end
        rescue ActiveRecord::RecordNotFound
            @order = Order.create
    end
end
