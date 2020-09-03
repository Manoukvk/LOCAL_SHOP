class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @top_designers = [Designer.third, Designer.fourth, Designer.first]
    @products = [Product.fourth, Product.first, Product.second]
  end

end
