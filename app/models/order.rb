class Order < ActiveRecord::Base
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :products, through: :carted_products

  def subtotal
    buy_quantity * product.price
  end

  def order_tax
    buy_quantity * product.tax
  end

  def order_total
    subtotal + order_tax
  end
end
