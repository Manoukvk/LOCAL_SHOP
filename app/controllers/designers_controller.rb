class DesignersController < ApplicationController

  def show
    @designer = Designer.find(params[:id])
    @products = Product.where(designer: @designer)
  end

end
