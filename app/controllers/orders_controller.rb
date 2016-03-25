class OrdersController < ApplicationController
  def create
    order = Order.create(
      quantity: params[:quantity],
      product_id: params[:product_id],
      status: "carted",
      user_id: current_user.id
    )
    # flash[:success] = "Product added!"
    redirect_to "/orders/#{order.id}"
  end
end
