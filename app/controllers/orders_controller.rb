class OrdersController < ApplicationController
  def create
    order = Order.create(
      buy_quantity: params[:buy_quantity],
      user_id: current_user.id
    )
    flash[:success] = "Product added!"
    redirect_to "/orders/#{order.id}"
  end

  def show
  end
end
