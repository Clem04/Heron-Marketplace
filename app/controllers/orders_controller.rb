class OrdersController < ApplicationController
	def index
		@order = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		if @order.save
			redirect_to order_path(@order)
		else
			render :new
		end
	end

	private

	def oder_params
		params.require(:order).permit(:user_id, :points_used, :points_earned, 
			:price_before_reduction, :final_price_before_taxes, :final_price_with_taxes, :status )
	end
end
