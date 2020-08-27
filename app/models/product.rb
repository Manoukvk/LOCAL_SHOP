class Product < ApplicationRecord
  belongs_to :category
  belongs_to :designer
  has_many :order_products
  has_one_attached :foto
end
