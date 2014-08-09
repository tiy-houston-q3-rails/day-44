class DashboardController < ApplicationController
  def index
    @cupcakes = Cupcake.all

    @order = Order.find_by(id: session[:order_id])

  end

  def order
    id = params[:id]
    quantity = params[:quantity]
    order = Order.find_by(id: session[:order_id])
    if order.nil?
      order = Order.create
      order_id = order.id
      session[:order_id] = order_id
    end

    item = Lineitem.create quantity: quantity, cupcake_id: id, order_id: order.id
    redirect_to root_path
  end


end
