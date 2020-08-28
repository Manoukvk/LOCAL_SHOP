class DesignersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @designers = Designer.all
  end

  def show
    @designer = Designer.find(params[:id])
    @products = Product.where(designer: @designer)
  end
end
