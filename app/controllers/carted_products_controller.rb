class CartedProductsController < ApplicationController
  def create
    carted_products = CartedProduct.create(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: current_user.id
    )
    # flash[:success] = "Product added!"
    redirect_to "/carted_products/#{carted_products.id}"
  end

  def show
    @carted_product = CartedProduct.find_by(id: params[:id])
  end
end
