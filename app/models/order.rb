class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def subtotal
    buy_quantity * product.price
  end

  def order_tax
    subtotal * product.tax
  end

  def order_total
    subtotal + order_tax
  end
end
