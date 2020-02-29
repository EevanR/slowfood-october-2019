# frozen_string_literal: true

class OrderItemsController < ApplicationController
  def create
    product = Product.find(params[:id])
    order = if current_user.orders.empty? || !current_user.orders.last.active
              current_user.orders.create
            else
              current_user.orders.last
            end
    if order.add(product, product.price)
      redirect_to root_path, notice: "#{product.name} was added to your order"
    else
      redirect_to root_path, error: 'Something went wrong'
    end
  end

  def destroy
    item = OrderItem.find(params[:id])
    item.destroy
    redirect_to order_item_path(current_user.orders.ids), notice: 'Item has been removed from cart.' 
  end


  def show
    @order = current_user.orders.last
    @order_items = @order.shopping_cart_items
  end
end
