class Product < ActiveRecord::Base
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
