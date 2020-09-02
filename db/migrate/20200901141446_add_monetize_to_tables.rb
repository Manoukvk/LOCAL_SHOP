class AddMonetizeToTables < ActiveRecord::Migration[6.0]
  def change
    add_monetize :order_products, :price, currency: { present: false }
    add_monetize :orders, :total, currency: { present: false }
    add_monetize :products, :price, currency: { present: false }
  end
end
