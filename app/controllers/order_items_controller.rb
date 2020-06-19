class OrderItemsController < ApplicationController
	def index
		@order_items = Order.all
	end

	def new
		@order_item = Order.new
	end

	def create
		@order_item = OrderItem.new(order_item_params)
		if @order_item.save
			redirect_to order_path(@order_item)
		else
			render :new
		end
	end

	private

	def order_item_params
		params.require(:order).permit(:product_id, :order_id, :quantity, :points_earned)
	end
end
