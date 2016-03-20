class OrdersController < ApplicationController
  def create
    order = Order.create(
      buy_quantity: params[:buy_quantity]
    )
    flash[:success] = "Product successfully created!"
    redirect_to "/orders/#{order.id}"
  end

  def show
  end
end
