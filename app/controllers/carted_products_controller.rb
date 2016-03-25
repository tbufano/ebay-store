class CartedProductsController < ApplicationController
  def create
    carted_products = CartedProduct.create(
      quantity: params[:quantity],
      product_id: params[:product_id],
      status: "carted",
      user_id: current_user.id
    )
    # flash[:success] = "Product added!"
    redirect_to "/carted_products"
  end

  def index
    if current_user
      @carted_products = CartedProduct.where("status LIKE ? AND user_id = ?", "carted", current_user.id)
    else
      redirect_to "/"
    end
  end
end