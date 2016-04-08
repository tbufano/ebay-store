class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { only_integer: true }
  validates :price, numericality: { greater_than: 0 }
  validates :supplier_id, presence: true

  def sale_message
    if price < 2
      "Discount item!"
    else
      "On Sale!"
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  def item_in_stock
    if quantity > 0
      "Yes"
    else
      "No"
    end
  end
end
