class Product < ApplicationRecord
  belongs_to :category
  belongs_to :designer
  has_many :order_products
  has_many_attached :photos
end
