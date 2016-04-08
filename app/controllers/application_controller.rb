class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :get_carted_products

  def calculate_carted_products
    if current_user
      if session[:cart_count]
        @cart_count = session[:cart_count]
      else
        @cart_count = current_user.carted_products
                                  .where(status: 'carted')
                                  .count
        session[:cart_count] = @cart_count
      end
    else
      @cart_count = 0
    end
  end
end
