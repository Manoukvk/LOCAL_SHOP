class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:category].present?
      @products = Product.all.select { |product| product.category.name.downcase == "#{params[:category]}"&& product.category.gender.downcase == "#{params[:gender]}"}
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:category, :gender)
  end
end
