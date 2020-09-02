class PaymentsController < ApplicationController
    @order = current_user.orders.where(status: 'pending').find(params[:order_id])
end
