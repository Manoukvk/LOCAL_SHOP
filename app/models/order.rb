class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :order_products
  monetize :total_cents
end
