class OrdersController < ApplicationController
  def create
    @carted_products = CartedProduct.where("status = ? AND user_id = ?", "carted", current_user.id)
    subtotal = 0
    @carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price
    end
    tax = subtotal * 0.09
    total = subtotal + tax

    order = Order.create(
      subtotal: subtotal,
      tax: tax,
      total: total,
      user_id: current_user.id
    )

    @carted_products.update_all(status: "purchased", order_id: order.id)
    # flash[:success] = "Product added!"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
