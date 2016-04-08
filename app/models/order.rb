class Order < ActiveRecord::Base
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :products, through: :carted_products

  validates :user_id, presence: true
  validates :subtotal, presence: true
  validates :subtotal, numericality: { only_integer: true }
  validates :tax, presence: true
  validates :tax, numericality: { only_integer: true }
  validates :total, presence: true
  validates :total, numericality: { only_integer: true }

  # def subtotal
  #   buy_quantity * product.price
  # end

  # def order_tax
  #   buy_quantity * product.tax
  # end

  # def order_total
  #   subtotal + order_tax
  # end
end
