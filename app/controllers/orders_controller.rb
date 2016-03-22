class OrdersController < ApplicationController
  def create
    subtotal = params[:buy_quantity]
    order = Order.create(
      buy_quantity: params[:buy_quantity],
      product_id: params[:product_id],
      user_id: current_user.id
    )
    order.update(
      subtotal: order.subtotal,
      tax: order.order_tax,
      total: order.order_total
    )
    # flash[:success] = "Product added!"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
