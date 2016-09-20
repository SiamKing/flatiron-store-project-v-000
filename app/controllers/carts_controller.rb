class CartsController < ApplicationController

  def show
    @user = current_user
    @cart = Cart.find(params[:id])
  end

  def checkout
    cart = Cart.find(params[:id])
    cart.checkout
    current_user.remove_current_cart
    redirect_to cart_path(cart)
  end
end
