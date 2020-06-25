class MerchantOrdersController < ApplicationController
	before_action :set_line_item, only: [:create]
	before_action :set_cart, only: [:create]

	def new
		@merchant_order = MerchantOrder.new
	end

	def create
		@merchant_order = MerchantOrder.new(merchant_order_params)
		@line_item = @cart.add_product(product_variant)
		if @line_item.product_id.merchant_id == @merchant_order.merchant_id
			redirect_to order_path
		else
			redirect_to root_path
		end
	end

	private

	def merchant_order_params
		params.require(:merchant_order).permit(:merchant_id, :cart_id)
	end
end
