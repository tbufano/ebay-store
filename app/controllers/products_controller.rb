class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :search]

  def index
    @products = Product.all
    @images = Image.all
    sort_attribute = params[:sort]
    sort_attribute_desc = params[:sort_desc]
    sort_by_amount = params[:discounted]
    if sort_attribute
      @products = Product.order(sort_attribute)
    elsif sort_attribute_desc
      @products = Product.order(sort_attribute_desc => :desc)
    elsif sort_by_amount
      @products = Product.where("#{sort_by_amount} < ?", 50)
    elsif params[:category]
      @products = Category.find_by(name: params[:category]).products
    else
      render "index.html.erb"
    end
  end

  def new
    @product = Product.new
    @suppliers = Supplier.all
  end

  def create
    @product = Product.new(
      title: params[:title],
      description: params[:description],
      price: params[:price],
      supplier_id: params[:supplier][:supplier_id],
      quantity: params[:quantity],
      in_stock: params[:in_stock]
    )
    if @product.save
      @image = Image.new(src: params[:image], product_id: @product.id)
      if @image.save
        flash[:success] = "Product successfully created!"
        redirect_to "/products/#{@product.id}"
      else
        render "new.html.erb"
      end
    end
  end

  def show
    product_id = params[:id]
    if product_id == "random"
      products = Product.all
      @product = products.sample
    else
      @product = Product.find_by(id: product_id)
    end
  end

  def edit
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
  end

  def update
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    if @product.update(
      title: params[:title],
      description: params[:description],
      image: params[:image],
      price: params[:price],
      quantity: params[:quantity],
      in_stock: params[:in_stock]
    )
      flash[:success] = "Product successfully updated!"
      redirect_to "/products/#{product.id}"
    else
      render "edit.html.erb"
    end
  end

  def destroy
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    @product.destroy
    flash[:warning] = "Product successfully destroyed!"
    redirect_to "/products"
  end

  def search
    search_term = params[:search]
    @products = Product.where("name LIKE ?", "%#{search_term}%")
    render 'index.html.erb'
  end

  private

  def authenticate_admin!
    unless current_user && current_user.admin
      redirect_to "/"
    end
  end
end
