class ApplicationController < ActionController::Base

  before_action :current_cart
  #help us put it in the views
  helper_method :current_cart

  def current_cart
    #if customer has just landed on the site, give them a brand new cart
    #if they already have one, keep it
    #check session

    if session[:cart_id].present?
      #they already have a cart
      @current_cart = Cart.find(session[:cart_id])
    else
      #they don't have a cart
      @current_cart = Cart.create
      #let them know they have a cart through every single page
      session[:cart_id] = @current_cart.id
    end
  end

end
